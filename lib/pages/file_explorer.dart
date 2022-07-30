import 'package:fs/io.dart' if (dart.library.html) 'package:fs/html.dart';
import 'package:visemaps/controllers/stream_notifier.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:visemaps/utils/uri_name.dart';
import 'package:visemaps/widgets/file_tile.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

abstract class FileExplorerState extends State<StatefulWidget> {
	@override
	Widget build(BuildContext context) {
		return LayoutBuilder(
			builder: (BuildContext context, BoxConstraints constraints) {
				final isMobile = constraints.maxWidth < kMobileBreakpoint;
				return ColoredBox(
					color: const Color(0xFFFFFFFF),
					child: Column(
						children: [
							if (isMobile) ...[
								Padding(
									padding: const EdgeInsets.fromLTRB(11, 16, 19, 16),
									child: Row(
										crossAxisAlignment: CrossAxisAlignment.center,
										children: [
											if (Modular.to.canPop()) ...[
												GestureDetector(
													onTap: () {
														Modular.to.pop();
													},
													child: const Icon(
														CupertinoIcons.back,
														size: 24,
														color: Color(0xFF000000)
													)
												),
												const SizedBox(width: 11),
											],
											Text(
												Modular.args.uri.name,
												style: const TextStyle(
													fontSize: 17,
													fontWeight: FontWeight.w600,
													letterSpacing: -0.41,
													color: Color(0xFF000000)
												)
											),
											const Spacer(),
											GestureDetector(
												onTap: () {
													addFolder().then(setState);
												},
												child: const Icon(
													CupertinoIcons.folder_badge_plus,
													size: 24,
													color: Color(0xFF000000)
												)
											),
											const SizedBox(width: 20),
											GestureDetector(
												onTap: () {
													addFile().then(setState);
												},
												child: const Icon(
													CupertinoIcons.doc,
													size: 24,
													color: Color(0xFF000000)
												)
											),
										]
									)
								),
								const SizedBox(height: 8)
							] else ...[
								Container(
									alignment: Alignment.topRight,
									color: const Color(0xFFF7F6EE),
									padding: const EdgeInsets.all(10),
									child: Row(
										mainAxisAlignment: MainAxisAlignment.end,
										children: [
											GestureDetector(
												onTap: () {
													addFolder().then(setState);
												},
												child: const Icon(
													CupertinoIcons.folder_badge_plus,
													color: Color(0xFF1C1C1E),
													size: 16,
												),
											),
											const SizedBox(width: 20),
											GestureDetector(
												onTap: () {
													addFile().then(setState);
												},
												child: const Icon(
													CupertinoIcons.doc,
													color: Color(0xFF1C1C1E),
													size: 16,
												),
											)
										]
									),
								)
							],
							const SizedBox(height: 16),
							Expanded(
								child: FutureBuilder(
									future: buildTiles(context, isMobile ? FileTileType.mobile : FileTileType.desktop),
									builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
										if (snapshot.hasData) {
											return GridView(
												padding: const EdgeInsets.all(56),
												gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
													crossAxisCount: getColumnCount(constraints.maxWidth),
													crossAxisSpacing: 56,
													mainAxisSpacing: 56,
													childAspectRatio: 1.24,
												),
												children: snapshot.data!,
											);
										} else if (snapshot.hasError) {
											return Center(
												child: Text('${snapshot.error}')
											);
										} else {
											return const Center(
												child: CupertinoActivityIndicator(),
											);
										}
									},
								)
							)
						]
					)
				);
			}
		);
	}

	@protected
	Future<List<Widget>> buildTiles(BuildContext context, FileTileType type);
	Future<VoidCallback> addFile();
	Future<VoidCallback> addFolder();

	static const kMobileBreakpoint = 600;
	static const kTabletBreakpoint = 1024;
	static const kDesktopBreakPoint = 1366;

	static int getColumnCount(double width) {
		if (width <= kMobileBreakpoint) {
	   	 	return 2;
  		} else if (width > kMobileBreakpoint && width <= kTabletBreakpoint) {
    		return 4;
  		} else if (width > kTabletBreakpoint && width <= kDesktopBreakPoint) {
    		return 6;
  		} else {
  			return 8;
  		}
	}

	String getNewFile(String name) => json.encode({
		'title': name,
		'description': '',
		'links': [],
		'color': 0xFF4F6BA2,
		'children': [
			{
				'title': 'item 1',
				'description': '',
				'links': ['https://'],
				'color': 0xFF4F6BA2,
				'children': [{
					'title': 'item 1.1',
					'description': '',
					'links': [
						'https://'
					],
					'color': 0xFF4F6BA2,
					'children': [],
				}],
			},
			{
				'title': 'item 2',
				'description': '',
				'links': ['https://'],
				'color': 0xFF4F6BA2,
				'children': [],
			}
		],
	});
}

class LocalFileExplorerState extends FileExplorerState {
	Directory get directory => Directory(Modular.args.uri.pathSegments.join('/'));

	@override
	Future<List<Widget>> buildTiles(BuildContext context, FileTileType type) async => [
		await for (final FileSystemEntity file in directory.list()) (
			FileTile.fromFileSystemEntity(type: type, entity: file)
		)
	];

	 @override
	 Future<VoidCallback> addFile() async {
		for (int? postfix; ; postfix = (postfix ?? 0) + 1) {
			final name = 'new_file${postfix ?? ''}.json';
			final file = File(Modular.args.uri.resolve(name).pathSegments.join('/'));
			if (!await file.exists()) {
				await file.writeAsString(getNewFile(name));
				break;
			}
		}
		return () {};
	}

	@override
	Future<VoidCallback> addFolder() async {
		for (int? postfix; ; postfix = (postfix ?? 0) + 1) {
			final folder = Directory(
				Modular.args.uri.resolve(
					'new_folder${postfix ?? ''}'
				)
				.pathSegments
				.join('/')
			);
			if (!await folder.exists()) {
				await folder.create();
				break;
			}
		}
		return () {};
	}
}

class CloudFileExplorerState extends FileExplorerState {
	@override
	Future<VoidCallback> addFile() async {
		final root = FirebaseStorage.instance.ref(Modular.get<StreamNotifier<User?>>().value!.uid);
		final folder = root.child(Modular.args.params['w']);
		for (int? postfix; ; postfix = (postfix ?? 0) + 1) {
			final file = folder.child('new_file${postfix ?? ''}.json');
			try {
				await file.getDownloadURL();
			} catch (e) {
				await file.putString(getNewFile(file.name));
				break;
			}
		}
		return () {};
	}

	@override
	Future<VoidCallback> addFolder() async {
		final root = FirebaseStorage.instance.ref(Modular.get<StreamNotifier<User?>>().value!.uid);
		final folder = root.child(Modular.args.params['w']);
		await folder.child('.ghost').putString('');
		return () {};
	}

	@override
	Future<List<Widget>> buildTiles(BuildContext context, FileTileType type) async {
		final root = FirebaseStorage.instance.ref(Modular.get<StreamNotifier<User?>>().value!.uid);
		final content = await root.child(Modular.args.params['w']).listAll();
		return [
			for (final folder in content.prefixes) (
				FileTile.fromReference(type: type, reference: folder)
			),
			for (final file in content.items) ...[
				if (file.name.endsWith('.json')) (
					FileTile.fromReference(type: type, reference: file)
				)
			],
		];
	}
}

class LocalFileExplorer extends StatefulWidget {
	const LocalFileExplorer({Key? key}) : super(key: key);

	@override
	LocalFileExplorerState createState() => LocalFileExplorerState();
}

class CloudFileExplorer extends StatefulWidget {
	const CloudFileExplorer({Key? key}) : super(key: key);

	@override
	CloudFileExplorerState createState() => CloudFileExplorerState();
}