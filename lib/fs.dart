import 'package:visemaps/window_manager/window_manager.dart';

import 'package:visemaps/fs/html.dart' if (dart.library.io) 'package:visemaps/fs/io.dart' as fs;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:visemaps/firebase_options.dart';
import 'package:visemaps/item.dart';
import 'dart:convert';
import 'dart:async';

abstract class FileSystemEntity {
	static Reference? _root;
	abstract final dynamic _uber;

	String get path {
		if (_uber is Reference) {
			return _uber.fullPath.substring(1);
		} else {
			return _uber.path;
		}
	}

	String get name => _uber is Reference ? _uber.name : path.split('/').last;

	Directory? get parent {
		final parent = _uber.parent;
		if (parent == null) {
			return null;
		} else {
			return Directory._uber(parent);
		}
	}

	static set user(String? id) {
		_root = id == null ? null : FirebaseStorage.instance.ref(id);
	}

	static String? get user {
		return _root?.fullPath.substring(1);
	}

	Future<void> delete() => _uber is Reference ? _uber.delete() : fs.delete(path);
	bool exists() => _uber is Reference || _uber.existsSync();
}

class File extends FileSystemEntity {
	@override
	final dynamic _uber;

  	File(String path): _uber = 
		path.startsWith('cloud/')
			? FileSystemEntity._root?.child(path) 
			: fs.File(path)
	;

	File._uber(this._uber);
	
	Future<File> writeAsString(String content) async {
		if (_uber is Reference) {
			await (_uber as Reference).putString(
				base64.encode(utf8.encode(content)), 
				format: PutStringFormat.base64
			);
		} else if (_uber is fs.File) {
			await _uber.writeAsString(content);
		}
		return this;
	}

	Future<String?> readAsString() async {
		try {
			if (_uber is Reference) {
				return utf8.decode(
					(await (_uber as Reference).getData())!.buffer.asUint8List().toList()
				);
			} else if (_uber is fs.File) {
				return _uber.readAsString();
			} else if (_uber is fs.File) {
				return await _uber.readAsString();
			} else {
				throw Error();
			}
		} catch (e) {
			return null;
		}
	}
}

class Directory extends FileSystemEntity {
	@override
	final dynamic _uber;

  	Directory(String path): _uber = 
		path.startsWith('cloud/')
			? FileSystemEntity._root?.child(path) 
			: fs.Directory(path)
	;

	Directory._uber(this._uber);

	Future<DirectoryItems> list() async {
		if (_uber is Reference) {
			try {
				return DirectoryItems.fromListResult(await _uber.listAll());
			} catch (e) {
				return DirectoryItems([], []);
			}
		} else if (_uber is fs.Directory) {
			final List<File> files = <File>[];
			final List<Directory> directories = <Directory>[];
			await for (final entity in _uber.list()) {
				if (entity is fs.File) {
					files.add(File._uber(entity));
				} else if (entity is fs.Directory) {
					directories.add(Directory._uber(entity));
				}
			}
			return DirectoryItems(files, directories);
		} else {
			return DirectoryItems([], []);
		}
	}

  	Future<Directory> create() async {
		if (_uber is fs.Directory) {
			_uber.create();
		}
		return this;
	}
}

class DirectoryItems {
	final Iterable<File> files;
	final Iterable<Directory> directories;

	DirectoryItems(this.files, this.directories);
	DirectoryItems.fromListResult(ListResult result) :	
		files = result.items.map(File._uber), 
		directories = result.prefixes.map(Directory._uber);
	
	Iterable<FileSystemEntity> get all sync*  {
		yield* directories;
		yield* files;
	}
}

class FileSystem {
	static final ViseWindowManager windowManager = ViseWindowManager();

	static Future<bool> setup() async {
		await windowManager.initialize();
		await fs.setup();
		try {
			await Firebase.initializeApp(
				options: DefaultFirebaseOptions.currentPlatform
			);
			return true;
		} catch (e) {
			return false;
		}
	}

	static Future<Item?> getItem(File file) async {
		final String? contents = await file.readAsString();
		if (contents == null) {
			return null;
		}
		return Item.fromMap(json.decode(contents));
	}
}

String newFile(String name) => json.encode({
	'title': name,
	'links': [],
	'description': '',
	'color': 0xFF4F6BA2,
	'children': [
		{
			'title': 'Item  1',
			'links': [],
			'description': '',
			'color': 0xFF4F6BA2,
			'children': []
		},
		{
			'title': 'Item  2',
			'links': [],
			'description': '',
			'color': 0xFF4F6BA2,
			'children': []
		},
		{
			'title': 'Item  3',
			'links': [],
			'description': '',
			'color': 0xFF4F6BA2,
			'children': []
		}
	]
});