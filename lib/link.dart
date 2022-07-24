import 'package:flutter/cupertino.dart';

@immutable
class Link {
	final FocusNode node = FocusNode();
	final TextEditingController controller;

	Link(String url): controller = TextEditingController(text: url);
}

class LinkInput extends StatelessWidget {
	final Link link;

	const LinkInput({
		Key? key,
		required this.link
	}): super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			decoration: BoxDecoration(
				color: const Color(0xFFFFFFFF),
				borderRadius: BorderRadius.circular(6)
			),
			child: Padding(
				padding: const EdgeInsets.all(6),
				child: Row(
					mainAxisSize: MainAxisSize.min,
					children: [
						const Icon(
							CupertinoIcons.link,
							color: Color(0xFF2200CC), 
							size: 16
						),
						const SizedBox(width: 4),
						Flexible(
							child: ValueListenableBuilder<TextEditingValue>(
								valueListenable: link.controller,
								builder: (BuildContext context, TextEditingValue value, Widget? child) {
									const TextStyle style = TextStyle(
										color: Color(0xFF2200CC),
										fontSize: 14,
										decoration: TextDecoration.underline,
									);
									final TextSpan textSpan = TextSpan(
										text: value.text,
										style: style
									);
									final TextPainter painter = TextPainter(
										text: textSpan,
										textDirection: TextDirection.ltr
									);
									painter.layout();
									return SizedBox(
										width: painter.width,
										child: EditableText(
											controller: link.controller,
											focusNode: link.node,
											backgroundCursorColor: style.color!,
											cursorColor: style.color!,
											style: style
										),
									);
								},
							)
						),
					],
				),
			),
		);
	}
}