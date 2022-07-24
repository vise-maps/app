// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html';

Future<void> setup() async {
	window.localStorage['vise://'] = 'true';
	window.localStorage['vise://cloud/'] = 'true';
	window.localStorage['vise://trash/'] = 'true';
	window.localStorage['vise://local/'] = 'true';
}

abstract class FileSystemEntity {
	final String path;
	const FileSystemEntity(this.path);

	String get name => path.split('/').last;

	Directory? get parent {
		final parts = path.split('/');
		if (parts.isEmpty) {
			return null;
		} else {
			parts.removeLast();
			return Directory(parts.join('/'));
		}
	}

	bool existsSync();
	Future<void> delete();
} 

class Directory extends FileSystemEntity {
	Directory(String path): super(path.replaceFirst(RegExp(r'/$'), ''));

	Future<Directory> create({bool recursive = false}) async {
		window.localStorage['vise://$path/'] = 'true';
		return this;
	}

	@override
	bool existsSync() {
		return path == '' || window.localStorage['vise://$path/'] == 'true';
	}

	list() async* {
		final String path = this.path == '' ? 'vise://' : 'vise://${this.path}/';
		for (final key in window.localStorage.keys) {
			if (key.startsWith(path) && key != path) {
				if ('/'.allMatches(key, path.length).length < 2) {
					if (window.localStorage[key] == 'true') {
						yield Directory(key.substring(7));
					} else {
						yield File(key.substring(7));
					}
				}
			}
		}
	}

	@override
	Future<void> delete({bool recursive = false}) async {
		final String path = this.path == '' ? 'vise://' : 'vise://${this.path}/';
		if (recursive) {
			final bool shouldPlaceInTrash = !path.endsWith('trash/');
			for (final key in window.localStorage.keys) {
				if (key.startsWith(path)) {
					final content = window.localStorage.remove(key)!;
					if (shouldPlaceInTrash) {
						window.localStorage[key.replaceFirst('local/', 'trash/')] = content;
					}
				}
			}
		} else {
			window.localStorage.remove(path);
		}
	}
}

class File extends FileSystemEntity {
	const File(super.path);

	Future<File> writeAsString(String content) async {
		window.localStorage['vise://$path'] = content;
		return this;
	}

	Future<String?> readAsString() async {
		return window.localStorage['vise://$path'];
	}

	@override
	bool existsSync() {
		return window.localStorage['vise://$path'] != null;
	}

	@override
	Future<void> delete() async {
		final file = window.localStorage.remove('vise://$path')!;
		assert(file != 'true', 'The target is a directory');
		if (!path.startsWith('trash/')) {
			window.localStorage['vise://${path.replaceFirst('local/', 'trash/')}'] = file;
		}
	}
}

Future<void> delete(String path) async {
	final content = window.localStorage['vise://$path']!;
	if (content == 'true') {
		final directory = Directory(path);
		if (directory.existsSync()) {
			await directory.delete(recursive: true);
		}
	} else {
		final file = File(path);
		if (file.existsSync()) {
			await file.delete();
		}
	}
}