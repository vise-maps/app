import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:visemaps/widgets/controlled.dart';

class Field extends ControlledWidget {
	final bool disabled;
	final bool _searchField;
	final String placeholder;
  	final TextEditingController controller;

	final ValueNotifier<bool> hover = ValueNotifier<bool>(false);
	final FocusNode node;
	late final Listenable state;

  	Field({
		Key? key,
		this.disabled = false,
		required this.controller,
		this.placeholder = ''
	}): node = FocusNode(canRequestFocus: !disabled),
		_searchField = false, 
		super(key: key);

	Field.search({
		Key? key,
		this.disabled = false,
		required this.controller,
		this.placeholder = ''
	}): node = FocusNode(canRequestFocus: !disabled),
		_searchField = true, 
		super(key: key);

	@override
	void dispose() {
		node.dispose();
		hover.dispose();
	}

  	@override
  	Widget build(BuildContext context) {
		return MouseRegion(
			onEnter: (PointerEnterEvent event) => hover.value = true,
			onExit: (PointerExitEvent event) => hover.value = false,
			child: AnimatedBuilder(
				animation: Listenable.merge([node, hover]),
				builder: (BuildContext context, Widget? child) => Container(
					width: double.infinity,
					padding: const EdgeInsets.symmetric(
						vertical: 8,
						horizontal: 14
					),
					decoration: BoxDecoration(
						color: Color.fromRGBO(0, 0, 0, hover.value ? 0.23 : 0.16),
						borderRadius: BorderRadius.circular(4),
						border: Border.all(
							color: node.hasPrimaryFocus 
								? const Color(0xFFEF356A)
								: Color.fromRGBO(0, 0, 0, hover.value ? 0.2 : 0.16),
							width: node.hasPrimaryFocus ? 3 : (hover.value && !disabled ? 2 : 1),
						)
					),
					child: Row(
						children: [
							if (_searchField) ...[
								const Icon(
									CupertinoIcons.search,
									size: 12
								),
								const SizedBox(width: 6)
							],
							Expanded(
								child: ValueListenableBuilder<TextEditingValue>(
									valueListenable: controller,
									builder: (BuildContext context, TextEditingValue value, Widget? child) => Stack(
										children: [
											if (value.text == '') (
												Text(
													placeholder,
													style: TextStyle(
														color: Color.fromRGBO(
															0, 
															0, 
															0, 
															disabled ? 0.2 : (hover.value ? 50 : 40)
														)
													)
												)
											),
											child!
										],
									),
									child: EditableText(
										controller: controller, 
										focusNode: node,
										readOnly: disabled,
										style: TextStyle(
											color: Color.fromRGBO(
												0,
												0,
												0,
												node.hasPrimaryFocus ? 0.8 : hover.value ? 0.5 : 0.4
											),
										),
										backgroundCursorColor: const Color(0xFF007AFF),
										cursorColor: const Color(0xFF007AFF),
									)
								)
							)
						],
					)
				), 
			)
		);
	}
}