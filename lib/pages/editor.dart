import 'package:flutter/cupertino.dart';
import 'package:visemaps/editor.dart' as notify;
import 'package:visemaps/layout.dart';
import 'package:visemaps/link.dart';
import 'package:visemaps/widgets/controlled.dart';

class Editor extends ControlledWidget {
	final notify.Editor editor;
	final String path;

	Editor({
		Key? key, 
		required this.path
	}): editor = notify.Editor(path), 
		super(key: key);

	@override
	void dispose() {
		editor.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return AnimatedBuilder(
			animation: editor,
			builder: (context, child) {
				if (editor.file == null) {
					return const Center(
						child: CupertinoActivityIndicator(),
					);
				}
				if (editor.list) {
					return Padding(
						padding: const EdgeInsets.all(16),
						child: Column(
							mainAxisSize: MainAxisSize.max,
							children: [
								Container(
									width: double.infinity,
									alignment: Alignment.center,
									child: EditableText(
										controller: editor.file!.controller,
										focusNode: editor.file!.node,
										style: TextStyle(
											color: editor.file!.color,
											fontSize: 24,
											fontWeight: FontWeight.bold,
										),
										cursorColor: editor.file!.color,
										backgroundCursorColor: editor.file!.color,
										selectionColor: editor.file!.color.withOpacity(0.5),
										maxLines: null,
									)
								),
								Expanded(
									child: ListView.separated(
										itemBuilder: (context, index) {
											final item = editor.file!.children[index];
											final focused =
												item.hasChild(editor.focused)
												? editor.focused!
												: item;
											return Container(
												decoration: BoxDecoration(
													border: Border.all(
														color: item.color.withOpacity(0.14),
														width: 1
													),
													borderRadius: BorderRadius.circular(5),
													color: item.color.withOpacity(0.05)
												),
												padding: const EdgeInsets.all(8),
												child: Column(
													children: [
														...item.getList(),
														const SizedBox(height: 10),
														Container(
															height: 1,
															width: double.infinity,
															color: item.color.withOpacity(0.14)
														),
														Align(
															alignment: Alignment.centerRight,
															child: GestureDetector(
																onTap: () {
																	editor.add(focused);
																},
																child: const Icon(CupertinoIcons.add_circled),
															)
														),
														SizedBox(
															width: double.infinity,
															child: Wrap(
																spacing: 6,
																runSpacing: 6,
																crossAxisAlignment: WrapCrossAlignment.center,
																children: [
																	for (final link in focused.links) (
																		LinkInput(link: link)
																	),
																	GestureDetector(
																		onTap: () {
																			editor.addLink(focused);
																		},
																		child: const Icon(
																			CupertinoIcons.add,
																			color: Color(0xFF2200CC),
																			size: 16
																		)
																	)
																]
															)
														),
														const SizedBox(height: 8),
														EditableText(
															controller: focused.descriptionController,
															focusNode: focused.descriptionNode,
															style: TextStyle(
																color: item.color,
																fontSize: 16,
																fontWeight: FontWeight.w300,
																fontStyle: FontStyle.italic
															),
															cursorColor: item.color,
															backgroundCursorColor: item.color,
															selectionColor: item.color.withOpacity(0.05),
															maxLines: null,
														),
													],
												)
											);
										},
										separatorBuilder: (context, index) {
											return const SizedBox(height: 8);
										},
										itemCount: editor.file!.children.length,
									)
								)
							]
						)
					);
				}
				return TreeLayout.editable(editor: editor);
			}
		);
	}
}