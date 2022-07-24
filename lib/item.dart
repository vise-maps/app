import 'package:flutter/cupertino.dart';
import 'package:visemaps/editor.dart';
import 'package:visemaps/link.dart';

class Item {
	FocusNode node = FocusNode();
	List<Item> children;
	TextEditingController controller;
	TextEditingController descriptionController;
	FocusNode descriptionNode = FocusNode();
	Color color;
	Item? parent;
	List<Link> links;

	Item({
		required String title,
		required String description,
		required this.children,
		required this.links,
		this.color = const Color(0xFF4F6BA2)
	}): controller = TextEditingController(text: title), 
		descriptionController = TextEditingController(text: description) {
		for (Item child in children) {
			child.parent = this;
		}
	}

	void dispose() {
		controller.dispose();
		node.dispose();
		descriptionController.dispose();
		descriptionNode.dispose();
		for (final Item child in children) {
			child.dispose();
		}
	}

	Map<String, dynamic> toJson() {
		return {
			'title': controller.text,
			'description': descriptionController.text,
			'color': color.value,
			'children': [
				for (final Item child in children) (
					child.toJson()
				)
			],
			'links': [
				for (final Link link in links) (
					link.controller.text
				)
			]
		};
	}

	static Item fromMap(Map<String, dynamic> map) {
		return Item(
			title: map['title'],
			description: map['description'],
			children: [
				for (final Map<String, dynamic> child in map['children']) (
					Item.fromMap(child)
				)
			],
			links: [
				for (final String link in map['links']) (
					Link(link)
				)
			],
			color: Color(map['color'])
		);
	}

	bool hasChild(Item? item) {
		if (item == null) {
			return false;
		}
		if (this == item) {
			return true;
		}
		for (final Item child in children) {
			if (child.hasChild(item)) {
				return true;
			}
		}
		return false;
	}

	bool get hasFocus => node.hasFocus;

	Item? getFocused() {
		if (node.hasFocus) {
			return this;
		}
		for (final Item child in children) {
			final Item? result = child.getFocused();
			if (result != null) {
				return result;
			}
		}
		return null;
	}

	List<Widget> getList([Editor? editor]) {
		final bool root = parent?.parent == null;
		return [
			ValueListenableBuilder<TextEditingValue>(
				valueListenable: controller,
				builder: (BuildContext context, TextEditingValue text, Widget? child) {
					return Stack(
						children: [
							Container(
								width: double.infinity,
								height: root ? 20 : 18,
								color: editor?.focused == this
									? color.withOpacity(0.05)
									: null,
							),
							Text(
								text.text == '' ? 'New ..' : '',
								style: TextStyle(
									color: color.withOpacity(0.5),
									fontSize: root ? 19 : 17,
									fontWeight: root ? FontWeight.bold : null
								)
							),
							EditableText(
								controller: controller,
								focusNode: node,
								style: TextStyle(
									color: color,
									fontSize: root ? 19 : 17,
									fontWeight: root ? FontWeight.bold : null,
								),
								cursorColor: color,
								backgroundCursorColor: color,
								selectionColor: color.withOpacity(0.5),
								maxLines: null,
							)
						],
					);
				}
			),
			Padding(
				padding: const EdgeInsets.only(left: 10),
				child: Column(
					children: children.fold(
						[],
						(List<Widget> previousValue, Item element) => [
							...previousValue, 
							...element.getList(editor)
						]
					)
				),
			),
		];
	}

	List<Widget> getGrid([Editor? editor]) {
		final List<Widget> items = <Widget>[
			LayoutId(
				id: this, 
				child: Container(
					decoration: BoxDecoration(
						border: Border.all(
							color: color.withOpacity(0.14), 
							width: 1
						),
						borderRadius: BorderRadius.circular(5),
						color: color.withOpacity(0.05)
					),
					padding: const EdgeInsets.all(8),
					child: Column(
						children: [
							EditableText(
								controller: controller, 
								focusNode: node, 
								style: TextStyle(
									color: color,
									fontSize: 19,
									fontWeight: FontWeight.bold
								),
								cursorColor: color, 
								backgroundCursorColor: color,
								selectionColor: color.withOpacity(0.05),
								readOnly: editor == null,
								maxLines: null
							),
							if (parent != null)
								const SizedBox(height: 8),
							if (parent != null)
							SizedBox(
								width: double.infinity,
								child: Wrap(
									spacing: 6,
									runSpacing: 6,
									crossAxisAlignment: WrapCrossAlignment.center,
									children: [
										for (final Link link in links) (
											LinkInput(link: link)
										),
										if (editor != null) (
											GestureDetector(
												onTap: () {
													editor.addLink(this);
												},
												child: const Icon(
													CupertinoIcons.add,
													color: Color(0xFF2200CC), 
													size: 16
												)
											)
										)
									]
								),
							),
							if (parent != null) (
								EditableText(
									controller: descriptionController, 
									focusNode: descriptionNode, 
									style: TextStyle(
										color: color,
										fontSize: 16,
										fontWeight: FontWeight.w300,
										fontStyle: FontStyle.italic
									),
									cursorColor: color, 
									backgroundCursorColor: color,
									selectionColor: color.withOpacity(0.05),
									maxLines: null,
									readOnly: editor == null,
								)
							),
						]
					),
				)
			)
		];
		for (final Item child in children) {
			items.addAll(child.getGrid(editor));
		}
		return items;
	}
}