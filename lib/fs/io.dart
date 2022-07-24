import 'dart:io';
export 'dart:io' show File, Directory;
import 'package:path_provider/path_provider.dart';

Future<void> setup() async {
	Directory.current = await getApplicationDocumentsDirectory();
	final filesDirectory = Directory('local');
	
	if (!await filesDirectory.exists()) {
		filesDirectory.create();
	}

	final trashDirectory = Directory('trash');

	if (!await trashDirectory.exists()) {
		trashDirectory.create();
	}

	final cloudDirectory = Directory('cloud');
	if (!await cloudDirectory.exists()) {
		cloudDirectory.create();
	}
}

Future<void> delete(String path) async {
	if (path.endsWith('/')) {
		final directory = Directory(path);
		if (await directory.exists()) {
			await directory.delete(recursive: true);
		}
	} else {
		final file = File(path);
		if (await file.exists()) {
			await file.copy(path.replaceFirst('files', 'trash'));
			await file.delete();
		}
	}
}