// ignore_for_file: use_build_context_synchronously

import 'package:visemaps/widgets/file_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:visemaps/fs.dart';

class FileExplorer extends StatelessWidget {
	final String path;
	const FileExplorer({
		Key? key, 
		required this.path
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		final Directory dir = Directory(path);
			
		if (dir.exists()) {
			return LayoutBuilder(
				builder: (BuildContext context, BoxConstraints constraints) => ColoredBox(
					color: const Color(0xFFFFFFFF),
					child: Column(
						children: [
							Container(
								alignment: Alignment.topRight,
								color: const Color(0xFFF7F6EE),
								padding: const EdgeInsets.all(10),
								child: Row(
									mainAxisAlignment: MainAxisAlignment.end,
									children: [
										GestureDetector(
											onTap: () async {
												await Directory('$path${findFolderName(path)}').create();
												Navigator.of(context).pushNamed('/$path');
											},
											child: const Icon(
												CupertinoIcons.folder_badge_plus,
												color: Color(0xFFEF5350),
											),
										),
										GestureDetector(
											onTap: () async {
												await File('$path${findFileName(path)}').writeAsString(newFile('File'));
												Navigator.of(context).pushNamed('/$path');
											},
											child: const Icon(
												CupertinoIcons.doc,
												color: Color(0xFFEF5350),
											),
										)
									]
								),
							),
							Expanded(
								child: FutureBuilder<DirectoryItems>(
									future: dir.list(),
									builder: (BuildContext context, AsyncSnapshot<DirectoryItems> snapshot) {
										final columnCount = getColumnCount(constraints.maxWidth);
										if (snapshot.hasData) {
											return GridView(
												gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
													crossAxisCount: columnCount,
													crossAxisSpacing: 12,
													mainAxisSpacing: 12,
													childAspectRatio: 1.24,
												),
												children: [
													for (final FileSystemEntity file in snapshot.data!.all) (
														FileTile(file: file)
													)
												],
											);
										} else {
											return const Center(
												child: CupertinoActivityIndicator(),
											);
										}
									}
								)
							)
						]
					)
				)
			);
		} else {
			return const Center(
				child: Text('ERROR: Directory does not exist.')
			);
		}
	}

	static String findFolderName(String path) {
		final Directory file = Directory('${path}New Folder');
		if (file.exists()) {
			for (int postfix = 1; ; postfix++) {
				final Directory file = Directory(
					'${path}New Folder ($postfix)'
				);
				if (!file.exists()) {
					return 'New Folder ($postfix)';
				}
			}
		} else {
			return 'New Folder';
		}
	}

	static String findFileName(String path) {
		final File file = File('${path}New File.json');
		if (file.exists()) {
			for (int postfix = 1; ; postfix++) {
				final File file = File(
					'${path}New File ($postfix).json'
				);
				if (!file.exists()) {
					return 'New File ($postfix).json';
				}
			}
		} else {
			return 'New File.json';
		}
	}

	static const kMobileBreakpoint = 576;
	static const kTabletBreakpoint = 1024;
	static const kDesktopBreakPoint = 1366;

	static int getColumnCount(double width) {
		if (width <= kMobileBreakpoint) {
	   	 	return 2;
  		} else if (width > kMobileBreakpoint && width <= kTabletBreakpoint) {
    		return 3;
  		} else if (width > kTabletBreakpoint && width <= kDesktopBreakPoint) {
    		return 4;
  		} else {
  			return 6;
  		}
	}
}