import 'package:visemaps/widgets/controlled.dart';
import 'package:flutter/cupertino.dart';
import 'package:visemaps/fs.dart';
import 'package:visemaps/widgets/field.dart';
import 'package:visemaps/platform.dart';
import 'package:visemaps/widgets/file_tile.dart';

class Panel extends ControlledWidget {
	Panel({Key? key, required this.path}) : super(key: key);

	final String path;
	final TextEditingController search = TextEditingController();

	@override
	void dispose() {
		search.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return Container(
			width: 320,
			height: MediaQuery.of(context).size.height,
			color: const Color.fromRGBO(249, 249, 249, 0.82),
			padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
			child: Column(
				children: [
					Row(
						children: [
							if (VisePlatform.isMacOS) ...[
								GestureDetector(
									onTap: () {
										FileSystem.windowManager.close();
									},
									child: Container(
										width: 12,
										height: 12,
										color: const Color(0xFFFF3B30)
									)
								),
								const SizedBox(width: 10),
								GestureDetector(
									onTap: () {
										FileSystem.windowManager.toggle();
									},
									child: Container(
										width: 12,
										height: 12,
										color: const Color(0xFFFFCC00)
									)
								),
								const SizedBox(width: 10),
								GestureDetector(
									onTap: () {
										FileSystem.windowManager.minimize();
									},
									child: Container(
										width: 12,
										height: 12,
										color: const Color(0xFF34C759)
									)
								),
							] else (
								const Text(
									'Vise Maps',
									style: TextStyle(
										fontSize: 15,
										fontWeight: FontWeight.w500,
										color: Color(0x99000000)
									)
								)
							),
							const Spacer(),
							const Icon(
								CupertinoIcons.chevron_left_2,
								size: 24,
								color: Color(0x80000000)
							)
						],
					),
					const SizedBox(height: 20),
					Field.search(
						disabled: false, 
						controller: search
					),
					const SizedBox(height: 16),
					if (path.endsWith('/') || path == '') (
						Expanded(child: buildFolders(context))
					) else ...[
						Text(
							File(path).parent!.name,
							style: const TextStyle(
								fontSize: 24,
								fontWeight: FontWeight.w600,
								color: Color.fromRGBO(0, 0, 0, 0.7)
							)
						),
						const SizedBox(height: 14),
						Expanded(child: buildFiles(context))
					]
				]
			)
		);
	}

	@protected
	Widget buildFiles(BuildContext context) {
		return FutureBuilder<DirectoryItems>(
			future: File(path).parent!.list(),
			builder: (BuildContext context, AsyncSnapshot<DirectoryItems> snapshot) {
				if (snapshot.hasData) {
					return ListView(
						children: [
							for (final File file in snapshot.data!.files) ...[
								if (file.name.contains(search.text)) ...[
									AspectRatio(
										aspectRatio: 1.24,
										child: FileTile(
											file: file, 
											active: path == file.path
										)
									),
									const SizedBox(height: 8),
								]
							],
							buildButtons(context)
						]
					);
				}
				return const Center(child: CupertinoActivityIndicator());	
			}, 
		);
	}

	@protected
	Widget buildFolders(BuildContext context) {
		return FutureBuilder<Map<String, Iterable<Directory>>>(
			future: folders,
			builder: (BuildContext context, AsyncSnapshot<Map<String, Iterable<Directory>>> snapshot) {
				if (snapshot.hasError) {
					return Text('Error: ${snapshot.error}');
				} else if (snapshot.hasData) {
					return ListView(
						children: [
							for (final String title in snapshot.data!.keys) ...[
								Text(
									title,
									style: const TextStyle(
										fontWeight: FontWeight.w600,
										fontSize: 17,
										color: Color(0x80000000),
									),
								),
								const SizedBox(height: 8),
								for (final Directory folder in snapshot.data![title]!) 
									if (folder.name.contains(search.text)) ...[ 
										GestureDetector(
											onTap: () {
												Navigator.pushNamed(context, '/${folder.path}/');
											},
											child: Container(
												padding: const EdgeInsets.symmetric(
													horizontal: 10, 
													vertical: 8
												),
												decoration: path == '${folder.path}/'
													? BoxDecoration(
														color: const Color(0xFFEF356A),
														borderRadius: BorderRadius.circular(10)
													)
													: null,
												child: Text(
													folder.name,
													style: TextStyle(
														fontWeight: FontWeight.w600,
														fontSize: 16,
														color: Color(
															path == '${folder.path}/' 
																? 0xFFFFFFFF 
																: 0xFF000000
														),
													),
												),
											),
										),
										const SizedBox(height: 8),
									],
								const SizedBox(height: 8),
								GestureDetector(
									onTap: () {
										
									},
									child: Container(
										padding: const EdgeInsets.symmetric(
											horizontal: 10, 
											vertical: 8
										),
										child: Row(
											children: const [
												Icon(
													CupertinoIcons.folder_badge_plus,
													color: Color(0x80000000),
												),
												SizedBox(width: 8),
												Expanded(
													child: Text(
														'New Folder',
														style: TextStyle(
															fontWeight: FontWeight.w600,
															fontSize: 16,
															color: Color(0x80000000),
														),
													), 
												)
											]
										)
									),
								),
								const SizedBox(height: 8),
							],
							const SizedBox(height: 16),
							buildButtons(context)
						],
					);
				} else {
					return const Center(child: CupertinoActivityIndicator());
				}
			},
		);
	}

	@protected
	Widget buildButtons(BuildContext context) {
		return Row(
			children: [
				for (final IconData icon in buttons.keys) ...[
					Expanded(
						child: GestureDetector(
							onTap: () {
								Navigator.pushNamed(context, '/${buttons[icon]}');
							},
							child: Container(
								padding: const EdgeInsets.all(10),
								decoration: path == buttons[icon]
									? BoxDecoration(
										color: const Color.fromRGBO(0, 0, 0, 0.06),
										borderRadius: BorderRadius.circular(10)
									)
									: null,
								child: Icon(
									icon,
									color: Color(
										path == buttons[icon] 
											? 0xFFEF356A
											: 0x801C1C1E
									),
								),
							),
						),
					),
					if (icon != buttons.keys.last) (
						const SizedBox(width: 10)
					)
				] 
			],
		);
	}

	static final Map<IconData, String> buttons = {
		CupertinoIcons.home: '',
		CupertinoIcons.trash: 'trash/',
		CupertinoIcons.settings: 'settings/',
		CupertinoIcons.person_circle: 'account/',
	};

	static Future<Map<String, Iterable<Directory>>> get folders async {
		return {
			'ON THIS DEVICE': (await Directory('local').list()).directories,
			'IN CLOUD': (await Directory('cloud').list()).directories,
		};
	}
}