import 'package:flutter/widgets.dart';

class PasswordController extends TextEditingController {
	@override
	TextSpan buildTextSpan({required BuildContext context, TextStyle? style, required bool withComposing}) {
		String asteriks = '';
		for (int i = 0; i < value.text.length; i++) {
			asteriks += '•';
		}
		return TextSpan(
			style: style,
			text: asteriks
		);
  }
}