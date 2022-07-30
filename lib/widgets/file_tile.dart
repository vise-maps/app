import 'dart:convert';
import 'dart:ui';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fs/io.dart' if (dart.library.html) 'package:fs/html.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/controllers/item.dart';
import 'package:visemaps/pages/tree_layout.dart';
import 'package:visemaps/painters/folder.dart';
import 'package:visemaps/utils/uri_name.dart';

/// The design type of the tile
enum FileTileType {
	/// I appear in a panel,
	/// I'm just clickable
	compact,
	/// I am touch device friendly
	mobile,
	/// Classic desktop tile
	desktop
}

class FileTile extends StatelessWidget {
	FileTile._(
		Key? key, 
		this.type, 
		this.file, 
		this.path, 
		this.active, 
		[void Function()? open]
	) : onTap = active ? null : (() {
			open?.call();
			Modular.to.navigate(path);
		}), 
		super(key: key);

	FileTile.fromFileSystemEntity({
		Key? key,
		required FileTileType type,
		required FileSystemEntity entity,
		bool active = false
	}) : this._(
		key, type,
		entity is File ? entity.readAsString().then(
			(str) => Item.fromMap(
				json.decode(str)
			)
		) : Future.value(null),
		entity.absolute.path,
		active,
		entity is File ? () => Modular.get<EditorController>().openFile(entity) : null
	);

	FileTile.fromItem({
		Key? key,
		required FileTileType type,
		required Item item,
		required String path,
		bool active = false
	}) : this._(
		key, type,
		Future.value(item),
		path,
		active
	);

	FileTile.fromReference({
		Key? key,
		required FileTileType type,
		required Reference reference,
		bool active = false
	}) : this._(
		key, type,
		reference.getData().then((data) => Item.fromMap(json.decode(utf8.decode([...data!])))),
		'/${reference.fullPath.replaceFirst(RegExp(r'\w+'), 'cloud')}',
		active,
		() => Modular.get<EditorController>().openReference(reference)
	);


	final Future<Item?> file;
	final String path;
	final bool active;
	final FileTileType type;
	final void Function()? onTap;

 	@override
  	Widget build(BuildContext context) {
		final Color primary = CupertinoTheme.of(context).primaryColor;
		return GestureDetector(
			onTap: onTap,
			child: Container(
				width: double.infinity,
				decoration: file is Directory ? null : BoxDecoration(
					border: Border.all(
						color: active ? primary : const Color.fromRGBO(0, 0, 0, 0.1),
						width: type == FileTileType.mobile ? 2 : 3
					),
					borderRadius: BorderRadius.circular(10),
					color: const Color(0xFFFFFFFF)
				),
				child: Stack(
					// fit: StackFit.expand,
					alignment: Alignment.center,
					children: [
						if (!path.endsWith('/')) (
							Positioned.fill(
								child: Center(child:
									FutureBuilder<Item?>(
										future: file,
										builder: (context, AsyncSnapshot<Item?> snapshot) {
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
						if (type == FileTileType.compact || type == FileTileType.desktop) (
							Text(
								Uri.parse(path).name,
								style: const TextStyle(
									fontSize: 17,
									fontWeight: FontWeight.w600,
									color: Color(0xFF000000)
								)
							)
						) else if (type == FileTileType.mobile) (
							Icon(
								CupertinoIcons.play_fill,
								color: primary.withOpacity(0.03)
							)
						),
						if (path.startsWith('/cloud') && type != FileTileType.mobile) (
							const Positioned(
								bottom: 8,
								right: 8,
								child: Icon(
									CupertinoIcons.cloud,
									size: 24,
									color: Color(0x7E1C1C1E)
								)
							)
						),
						if (type == FileTileType.mobile) ...[
							Positioned(
								left: 8,
								bottom: 8,
								child: ClipRect(
									child: BackdropFilter(
										filter: ImageFilter.blur(
											sigmaX: 24,
											sigmaY: 24,
										),
										child: Container(
											decoration: const BoxDecoration(
												color: Color.fromRGBO(245, 245, 245, 0.6),
												borderRadius: BorderRadius.all(Radius.circular(6))
											),
											padding: const EdgeInsets.all(7),
											child: Text(
												Uri.parse(path).name,
												style: const TextStyle(
													fontSize: 17,
													fontWeight: FontWeight.w600,
													color: Color(0xF5000000)
												)
											)
										)
									)
								)
							),
							Positioned(
								right: 8,
								bottom: 8,
								child: ClipRect(
									child: BackdropFilter(
										filter: ImageFilter.blur(
											sigmaX: 24,
											sigmaY: 24,
										),
										child: const DecoratedBox(
											decoration: BoxDecoration(
												color: Color.fromRGBO(245, 245, 245, 0.6),
												borderRadius: BorderRadius.all(Radius.circular(6))
											),
											child: Icon(
												CupertinoIcons.ellipsis,
												color: Color(0xF5000000),
												size: 36
											)
										)
									)
								)
							)
						]
					],
				),
			)
		);
	}
}