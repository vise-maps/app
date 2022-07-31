import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';

class Field extends StatefulWidget {
	final bool disabled;
	final bool _searchField;
	final String placeholder;
  	final TextEditingController controller;

  	const Field({
		Key? key,
		this.disabled = false,
		required this.controller,
		this.placeholder = ''
	}): _searchField = false,
		super(key: key);

	const Field.search({
		Key? key,
		this.disabled = false,
		required this.controller,
		this.placeholder = ''
	}): _searchField = true,
		super(key: key);

	@override
	FieldState createState() => FieldState();
}

class FieldState extends State<Field> {
	late FocusNode node;
	bool hover = false;

	@override
	void initState() {
		super.initState();
		node = FocusNode(canRequestFocus: !widget.disabled);
	}

	@override
	void dispose() {
		super.dispose();
		node.dispose();
	}

  	@override
  	Widget build(BuildContext context) {
		return MouseRegion(
			onEnter: (PointerEnterEvent event) => setState(() {
				hover = true;
			}),
			onExit: (PointerExitEvent event) => setState(() {
			  hover = false;
			}),
			child: AnimatedBuilder(
				animation: node,
				builder: (BuildContext context, Widget? child) {
					final Color color = Color.fromRGBO(
						0,
						0,
						0,
						node.hasPrimaryFocus ? 0.8 : hover ? 0.5 : 0.4
					);
					final double borderWidth = node.hasPrimaryFocus ? 3 : hover && !widget.disabled ? 2 : 1;
					return Container(
						width: double.infinity,
						margin: EdgeInsets.symmetric(vertical: 3 - borderWidth),
						padding: EdgeInsets.symmetric(
							vertical: 8,
							horizontal: 17 - borderWidth
						),
						decoration: BoxDecoration(
							color: Color(hover ? 0xFFF2F2F7 : 0xFFE5E5E5),
							borderRadius: BorderRadius.circular(4),
							border: Border.all(
								color: node.hasPrimaryFocus
									? CupertinoTheme.of(context).primaryColor
									: Color.fromRGBO(0, 0, 0, hover ? 0.2 : 0.16),
								width: borderWidth,
							),
						),
						child: Row(
							children: [
								if (widget._searchField) ...[
									Icon(
										CupertinoIcons.search,
										size: 12,
										color: color,
									),
									const SizedBox(width: 6)
								],
								Expanded(
									child: ValueListenableBuilder<TextEditingValue>(
										valueListenable: widget.controller,
										builder: (BuildContext context, TextEditingValue value, Widget? child) => Stack(
											children: [
												if (value.text == '' && !node.hasPrimaryFocus) (
													Text(
														widget.placeholder,
														style: TextStyle(
															color: Color.fromRGBO(
																0,
																0,
																0,
																widget.disabled ? 0.2 : (hover ? 50 : 40)
															),
															fontSize: 17,
														)
													)
												),
												child!
											],
										),
										child: EditableText(
											controller: widget.controller,
											focusNode: node,
											readOnly: widget.disabled,
											style: TextStyle(
												color: color,
												fontSize: 17,
											),
											backgroundCursorColor: const Color(0xFF007AFF),
											cursorColor: const Color(0xFF007AFF),
										)
									)
								)
							],
						)
					);
				}
			)
		);
	}
}