import 'package:flutter/cupertino.dart';

class LoginField extends StatelessWidget {
	LoginField({
		Key? key,
		required this.controller,
		required this.placeholder
	}) : super(key: key);

	final TextEditingController controller;
	final FocusNode node = FocusNode();
	final String placeholder;

	@override
	Widget build(BuildContext context) {
		final Color primary = CupertinoTheme.of(context).primaryColor;
		return AnimatedBuilder(
			animation: node,
			builder: (BuildContext context, Widget? child) {
				return Container(
					decoration: BoxDecoration(
						border: Border(
							bottom: BorderSide(
								color: node.hasPrimaryFocus
									? primary
									: const Color.fromRGBO(0, 0, 0, 0.16),
								width: node.hasFocus ? 2 : 1
							)
						),
					),
					padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
					child: child!
				);
			},
			child: ValueListenableBuilder<TextEditingValue>(
				valueListenable: controller,
				builder: (BuildContext context, TextEditingValue value, Widget? child) {
					return Stack(
						children: [
							if (value.text == '') (
								Text(
									placeholder,
									style: const TextStyle(
										color: Color.fromRGBO(0, 0, 0, 0.2),
										fontSize: 17,
										fontWeight: FontWeight.w400
									)
								)
							),
							child!
						],
					);
				},
				child: EditableText(
					controller: controller,
					focusNode: node,
					style: const TextStyle(
						color: Color.fromRGBO(0, 0, 0, 0.5),
						fontSize: 17,
					),
					cursorColor: primary,
					backgroundCursorColor: primary,
					selectionColor: primary.withOpacity(0.2)
				)
			)
		);
	}
}