import 'package:flutter/cupertino.dart';
import 'package:visemaps/fs.dart';
import 'package:visemaps/item.dart';
import 'package:visemaps/layout.dart';
import 'package:visemaps/painters/folder.dart';

class FileTile extends StatelessWidget {
  const FileTile({
	Key? key,
	required this.file,
	this.active = false
  }) : super(key: key);

  final FileSystemEntity file;
  final bool active;

  @override
  Widget build(BuildContext context) {
	return GestureDetector(
		onTap: () {
			Navigator.pushNamed(context, '/${file.path}${file is Directory ? '/' : ''}');
		},
		child: Container(
			width: double.infinity,
			decoration: BoxDecoration(
				border: Border.all(
					color: active ? const Color(0xFFEF356A) : const Color.fromRGBO(0, 0, 0, 0.1),
					width: 3
				),
				borderRadius: BorderRadius.circular(10),
				color: const Color(0xFFFFFFFF)
			),
			child: Stack(
				// fit: StackFit.expand,
				alignment: Alignment.center,
				children: [
					if (file is File) (
						Positioned.fill(
							child: Center(child: 
								FutureBuilder<Item?>(
									future: FileSystem.getItem(file as File),
									builder: (BuildContext context, AsyncSnapshot<Item?> snapshot) {
										if (snapshot.hasData) {
											return TreeLayout(item: snapshot.data!);
										} else {
											return const  CupertinoActivityIndicator();
										}
									}
								)
							)
						)
					) else (
						Positioned.fill(
							child: CustomPaint(
								painter: FolderPainter(),
								child: const SizedBox.expand()
							)
						)
					),
					Text(
						file.name,
						style: const TextStyle(
							fontSize: 17,
							fontWeight: FontWeight.w600,
							color: Color(0xFF000000)
						)
					),
					if (file.path.startsWith('cloud')) (
						const Positioned(
							bottom: 8,
							right: 8,
							child: Icon(
									CupertinoIcons.cloud,
								size: 24,
								color: Color(0x7E1C1C1E)
							)
						)
					)
				],
			),
		)
	);
  }
}