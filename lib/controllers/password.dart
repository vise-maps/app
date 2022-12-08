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
/// password.dart - the controller of a password text field.
import 'package:flutter/widgets.dart';

class PasswordController extends TextEditingController {
	@override
	TextSpan buildTextSpan({required BuildContext context, TextStyle? style, required bool withComposing}) {
		return TextSpan(
			style: style,
			text: '•' * value.text.length
		);
  }
}