import 'dart:async';
import 'dart:convert';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fs/io.dart' if (dart.library.html) 'package:fs/html.dart';
import 'package:visemaps/controllers/item.dart';
import 'package:visemaps/utils/link.dart';

class EditorController with ChangeNotifier {
  Item? file;
  Item? focused;
  bool list = false;
  Timer? saveTimer;
  bool hasChanged = false;

  EditorController() {
    addListener(() {
      hasChanged = true;
    });
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


  Future<void> openFile(File entity) async {
    saveTimer?.cancel();
    file = Item.fromMap(json.decode(await entity.readAsString()));
    if (file != null) {
      installListeners(file!);
      saveTimer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
        if (hasChanged) {
          entity.writeAsString(json.encode(file!));
          hasChanged = false;
        }
      });
    }
    notifyListeners();
  }

  Future<void> openReference(Reference ref) async {
    saveTimer?.cancel();
    file = Item.fromMap(json.decode(utf8.decode([...(await ref.getData())!])));
    notifyListeners();
  }

  void toggleList() {
    list = !list;
    notifyListeners();
  }
}
