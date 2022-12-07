import 'dart:convert';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:visemaps/controllers/auth.dart';
import 'package:visemaps/controllers/item.dart';
import 'package:visemaps/pages/tree_layout.dart';
import 'package:go_router/go_router.dart';

class FileExplorer extends StatelessWidget {
  const FileExplorer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final folder = FirebaseStorage.instance.ref(Auth.of(context)!.uid);
    final files = folder.listAll();
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Explorer'),
        elevation: 0,
      ),
      body: FutureBuilder(
        future: files,
        builder: (BuildContext context, AsyncSnapshot<ListResult> snapshot) {
          if (snapshot.hasData) {
            return GridView.count(
              crossAxisCount: 3,
              children: [
                for (final file in snapshot.data!.items) (
                  Card(
                    child: InkWell(
                      onTap: () => context.go('/edit/${file.name}'),
                      child: Column(
                        children: [
                          Expanded(child: FutureBuilder(
                            future: file.getData(),
                            builder: (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
                              if (snapshot.hasData) {
                                return TreeLayout(item: Item.fromMap(
                                  json.decode(utf8.decode(snapshot.data!))
                                ));
                              } else {
                                return const Center(child: CircularProgressIndicator());
                              }
                            },
                          )),
                          ListTile(
                            title: Text(utf8.decode(base64.decode(file.name))),
                            subtitle: Text(file.fullPath),
                            leading: const Icon(Icons.file_open)
                          )
                        ],
                      )
                    )
                  )
                )
              ]
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (context) => AlertDialog(
              title: const Text('Create new file'),
              content: TextField(
                decoration: const InputDecoration(
                  hintText: 'File name'
                ),
                onSubmitted: (value) {
                  Navigator.pop(context);
                  folder.child(base64.encode(utf8.encode(value))).putData(
                    Uint8List.fromList(
                      utf8.encode(json.encode(
                        Item(
                          title: value, 
                          children: [
                            Item(title: 'Child 1', children: [], links: [], description: 'Description 1'),
                            Item(title: 'Child 2', children: [], links: [], description: 'Description 2'),
                            Item(title: 'Child 3', children: [], links: [], description: 'Description 3'),
                          ], 
                          description: '',
                          links: []
                        )
                        ..dispose()
                        ..toJson()
                      ))
                    )
                  );
                }
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context), 
                  child: const Text('Cancel')
                )
              ],
            )
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}