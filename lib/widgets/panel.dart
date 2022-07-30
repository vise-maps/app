/// Vise Maps - an application for visualizing maps.
/// Copyright (C) 2022  Tomáš Wróbel
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU Affero General Public License as published
/// by the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU Affero General Public License for more details.
///
/// You should have received a copy of the GNU Affero General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.
///
/// panel.dart - the side panel visible on all the pages except login and signup.
import 'package:fs/io.dart' if (dart.library.html) 'package:fs/html.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:visemaps/controllers/stream_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:visemaps/utils/uri_name.dart';
import 'package:visemaps/widgets/field.dart';
import 'package:visemaps/widgets/file_tile.dart';

class Panel extends StatefulWidget {
	const Panel({Key? key}) : super(key: key);

	@override
	PanelState createState() => PanelState();
}

class PanelState extends State<Panel> {
	final TextEditingController search = TextEditingController();

	@override
	void dispose() {
		super.dispose();
		search.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return ColoredBox(
			color: const Color.fromRGBO(0, 0, 0, 0.15),
			child: Container(
				width: 320,
				height: MediaQuery.of(context).size.height,
				color: const Color.fromRGBO(249, 249, 249, 0.82),
				padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
				child: Column(
					children: [
						Row(
							children: const [
								Text(
									'Vise Maps',
									style: TextStyle(
										fontSize: 15,
										fontWeight: FontWeight.w500,
										color: Color(0x99000000)
									)
								),
								Spacer(),
								Icon(
									CupertinoIcons.chevron_left_2,
									size: 24,
									color: Color(0x80000000)
								)
							],
						),
						const SizedBox(height: 20),
						Field.search(
							disabled: false,
							controller: search,
							placeholder: 'Search',
						),
						const SizedBox(height: 16),
						if (FileSystemEntity.typeSync(path) == FileSystemEntityType.file) ...[
							Text(
								File(path).parent.uri.name,
								style: const TextStyle(
									fontSize: 24,
									fontWeight: FontWeight.w600,
									color: Color.fromRGBO(0, 0, 0, 0.7)
								)
							),
							const SizedBox(height: 14),
							Expanded(child: buildFiles(context))
						] else (
							Expanded(
								child: FutureBuilder(
									future: buildFolders(context),
									builder: (context, AsyncSnapshot<List<Widget>> snapshot) {
										if (snapshot.hasData) {
											return ListView(children: snapshot.data!);
										} else if (snapshot.hasError) {
											return Center(child: Text(snapshot.error.toString()));
										} else {
											return const Center(child: CupertinoActivityIndicator());
										}
									},
								)
							)
						)
					]
				)
			)
		);
	}

	String get path => Modular.args.uri.pathSegments.join('/');

	@protected
	Widget buildFiles(BuildContext context) {
		return FutureBuilder(
			future: () async {
				return [
					await for (final file in File(path).parent.list()) ...[
						if (file is File && file.path.contains(search.text)) ...[
							AspectRatio(
								aspectRatio: 1.24,
								child: FileTile.fromFileSystemEntity(
									type: FileTileType.compact,
									entity: file,
									active: path == '${file.absolute.uri}'
								)
							),
							const SizedBox(height: 8),
						]
					],
					buildButtons(context)
				];
			}(),
			builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
				if (snapshot.hasData) {
					return ListView(children: snapshot.data!);
				}
				return const Center(child: CupertinoActivityIndicator());
			},
		);
	}

	@protected
	Future<List<Widget>> buildFolders(BuildContext context) async {
		final Color primary = CupertinoTheme.of(context).primaryColor;
		final user = context.watch<StreamNotifier<User?>>().value;
		return [
			const Text(
				'ON THIS DEVICE',
				style: TextStyle(
					fontWeight: FontWeight.w600,
					fontSize: 17,
					color: Color(0x80000000),
				),
			),
			const SizedBox(height: 8),
			await for (var folder in Directory('local').list()) ...[
				if (folder is Directory && folder.uri.pathSegments.first.contains(search.text)) ...[
					GestureDetector(
						onTap: () {
							Modular.to.navigate(folder.absolute.uri.toString());
						},
						child: Container(
							padding: const EdgeInsets.symmetric(
								horizontal: 10,
								vertical: 8
							),
							decoration: path == '${folder.uri}'
								? BoxDecoration(
									color: primary,
									borderRadius: BorderRadius.circular(10)
								)
								: null,
							child: Text(
								folder.uri.pathSegments[folder.uri.pathSegments.length - 2],
								style: TextStyle(
									fontWeight: FontWeight.w600,
									fontSize: 16,
									color: Color(
										path == folder.uri.toString()
											? 0xFFFFFFFF
											: 0xFF000000
									),
								),
							),
						),
					),
					const SizedBox(height: 8),
				]
			],
			const SizedBox(height: 8),
			GestureDetector(
				onTap: () async {
					for (int? postfix; ; postfix = (postfix ?? 0) + 1) {
						final dir = Directory('local/new_folder${postfix ?? ''}');
						if (!await dir.exists()) {
							await dir.create();
							break;
						}
					}
					setState(() {});
				},
				child: Row(
					crossAxisAlignment: CrossAxisAlignment.center,
					children: const [
						Icon(
							CupertinoIcons.folder_badge_plus,
							color: Color(0x80000000),
						),
						SizedBox(width: 8),
						Expanded(
							child: Text(
								'Add Folder',
								style: TextStyle(
									fontWeight: FontWeight.w600,
									fontSize: 16,
									color: Color(0x80000000),
								),
							),
						)
					]
				),
			),
			const SizedBox(height: 8),
			if (user != null) ...[
				const Text(
					'IN CLOUD',
					style: TextStyle(
						fontWeight: FontWeight.w600,
						fontSize: 17,
						color: Color(0x80000000),
					),
				),
				const SizedBox(height: 8),
				for (final ref in (await FirebaseStorage.instance.ref(user.uid).listAll()).prefixes)
					if (ref.name.contains(search.text)) ...[
						GestureDetector(
							onTap: () {
								Modular.to.navigate('/cloud/${ref.name}/');
							},
							child: Container(
								padding: const EdgeInsets.symmetric(
									horizontal: 10,
									vertical: 8
								),
								decoration: path == 'cloud/${ref.name}/'
									? BoxDecoration(
										color: primary,
										borderRadius: BorderRadius.circular(10)
									)
									: null,
								child: Text(
									ref.name,
									style: TextStyle(
										fontWeight: FontWeight.w600,
										fontSize: 16,
										color: Color(
											path == 'cloud/${ref.name}/' ? 0xFFFFFFFF : 0xFF000000
										),
									),
								),
							),
						),
						const SizedBox(height: 8),
					],
				GestureDetector(
					onTap: () async {
						final root = FirebaseStorage.instance.ref(user.uid);
						for (int? postfix; ; postfix = (postfix ?? 0) + 1) {
							final dir = root.child('new_folder${postfix ?? ''}');
							try {
								await dir.list();
							} catch (e) {
								await dir.child('.ghost').putString('');
								break;
							}
						}
						setState(() {});
					},
					child: Row(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: const [
							Icon(
								CupertinoIcons.folder_badge_plus,
								color: Color(0x80000000),
							),
							SizedBox(width: 8),
							Expanded(
								child: Text(
									'Add Folder',
									style: TextStyle(
										fontWeight: FontWeight.w600,
										fontSize: 16,
										color: Color(0x80000000),
									),
								),
							)
						]
					),
				),
			]
		];
	}

	@protected
	Widget buildButtons(BuildContext context) {
		return Row(
			children: [
				for (final IconData icon in buttons.keys) ...[
					Expanded(
						child: GestureDetector(
							onTap: () {
								Modular.to.navigate('/${buttons[icon]}');
							},
							child: Container(
								padding: const EdgeInsets.all(10),
								decoration: path == buttons[icon]
									? const BoxDecoration(
										color: Color.fromRGBO(0, 0, 0, 0.06),
										borderRadius: BorderRadius.all(Radius.circular(10))
									)
									: null,
								child: Icon(
									icon,
									color: path == buttons[icon]
										? CupertinoTheme.of(context).primaryColor
										: const Color.fromRGBO(28, 28, 30, 0.5)
									,
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
		CupertinoIcons.trash: 'trash',
		CupertinoIcons.gear: 'settings',
		CupertinoIcons.profile_circled: 'account',
	};
}