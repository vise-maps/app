/// Vise Maps - an application for visualizing maps.
/// Copyright (C) 2022  Tomáš Wróbel
///
/// This program is free software: you can redistribute it and/or modify
/// it under the terms of the GNU Affero General Public License as published
/// by the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU Affero General Public License for more details.
///
/// You should have received a copy of the GNU Affero General Public License
/// along with this program.  If not, see <https://www.gnu.org/licenses/>.
///
/// link.dart - the controller of a link in the editor.
import 'package:flutter/material.dart';

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
			decoration: const BoxDecoration(
				color: Color(0xFFFFFFFF),
				borderRadius: BorderRadius.all(Radius.circular(6))
			),
			child: Padding(
				padding: const EdgeInsets.all(6),
				child: Row(
					mainAxisSize: MainAxisSize.min,
					children: [
						const Icon(
							Icons.link,
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