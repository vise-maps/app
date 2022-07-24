import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:visemaps/fs.dart';
import 'package:visemaps/item.dart';
import 'package:visemaps/link.dart';

class Editor extends ChangeNotifier {
  Item? file;
  Item? focused;
  bool list = false;
  Timer? saveTimer;
  bool hasChanged = false;

  Editor([String? path]) : super() {
    addListener(() {
      hasChanged = true;
    });
    if (path != null) {
      open(path);
    }
  }

  @override
  void dispose() {
    super.dispose();
    file?.dispose();
    saveTimer?.cancel();
  }

  void installListeners(Item item) {
    item.node.addListener(() {
      if (item.node.hasFocus) {
        focused = item;
        notifyListeners();
      } else if (item.controller.text == '' && item.parent != null) {
        remove(item);
      }
    });
    item.node.onKey = (FocusNode node, RawKeyEvent event) {
      if (list) {
        if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
          if (event.isControlPressed) {
            final int start = item.controller.selection.start;
            final int end = item.controller.selection.end;
            final String title = item.controller.text;
            item.controller.text = title.substring(0, start);
            item.controller.text += '\n';
            item.controller.text += title.substring(end);
            item.controller.selection = TextSelection.collapsed(offset: start + 1);
          } else {
            add(item);
          }
          return KeyEventResult.handled;
        }
        if (event.isKeyPressed(LogicalKeyboardKey.backspace) &&
            item.controller.text == '') {
          remove(item);
          return KeyEventResult.handled;
        }
        if (event.isKeyPressed(LogicalKeyboardKey.tab)) {
          if (event.isShiftPressed) {
            if (item.parent?.parent != null && item.parent?.parent != file) {
              oneLevelLower(item);
            }
          } else {
            oneLevelHigher(item);
          }
          return KeyEventResult.handled;
        }
      }
      return KeyEventResult.ignored;
    };
    item.controller.addListener(notifyListeners);
    item.descriptionController.addListener(notifyListeners);
    item.children.forEach(installListeners);
  }

  void oneLevelLower(Item item) {
    item.parent!.children.remove(item);
    final Item parent = item.parent!.parent!;
    final int index = parent.children.indexOf(item.parent!);
    item.parent!.parent!.children.insert(index + 1, item);
    item.parent = parent;
    notifyListeners();
  }

  void oneLevelHigher(Item item) {
    final int index = item.parent?.children.indexOf(item) ?? -1;
    if (index > 0) {
      item.parent!.children.remove(item);
      final Item parent = item.parent!.children[index - 1];
      parent.children.add(item);
      item.parent = parent;
      notifyListeners();
    }
  }

  void add(Item item) {
    item.children.add(
      Item(
        description: '',
        links: [], 
        title: '', 
        color: item.color, 
        children: []
      )
      ..parent = item
    );
    installListeners(item.children.last);
    notifyListeners();
  }

  void addLink(Item item) {
    item.links.add(Link('https://'));
    notifyListeners();
  }

  void remove(Item item) {
    item.parent!.children.remove(item);
    notifyListeners();
  }


  Future<void> open(String path) async {
    saveTimer?.cancel();
    file = await FileSystem.getItem(File(path));
    if (file != null) {
      installListeners(file!);
      saveTimer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
        if (hasChanged) {
          save(path);
          hasChanged = false;
        }
      });
    }
    notifyListeners();
  }

  Future<File> save(String currentPath) {
    return File(currentPath).writeAsString(json.encode(file!.toJson()));
  }

  Future<void> saveAs(String currentPath, String path) async {
    await save(currentPath);
    final File newFile = await save(path);
    file = await FileSystem.getItem(newFile);
    installListeners(file!);
    notifyListeners();
  }

  void toggleList() {
    list = !list;
    notifyListeners();
  }
}
