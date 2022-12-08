import 'package:flutter/material.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/controllers/item.dart';
import 'package:visemaps/pages/list_layout.dart';
import 'package:visemaps/pages/tree_layout.dart';
import 'package:visemaps/utils/navigation.dart';

class Editor extends StatelessWidget {
  final EditorController controller;
  const Editor({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            if (controller.focused == null) {
              return Text(controller.file?.controller.text ?? 'Loading...');
            } else {
              final parts = <String>[];
              for (Item? item = controller.focused; item != null; item = item.parent) {
                parts.insert(0, item.controller.text == '' ? '[unnamed]' : item.controller.text);
              }
              return Text(parts.join(' > '));
            }
          },
        ),
        actions: [
          ValueListenableBuilder(
            valueListenable: controller.list, 
            builder: (context, bool list, child) => IconButton(
                icon: Icon(list ? Icons.grid_view_rounded : Icons.list),
                onPressed: controller.toggleList,
                tooltip: list ? 'Switch to tree view' : 'Switch to list view',
            )
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: controller.list,
        builder: (context, bool list, child) {
          return list 
            ? ListLayout(editor: controller) 
            : TreeLayout.editable(editor: controller);
        }, 
      ),
      bottomNavigationBar: bottomBar(context),
    );
  }
}