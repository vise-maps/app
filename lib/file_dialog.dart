import 'package:flutter/material.dart';

class FileDialog extends StatelessWidget {
	final String title;
	final Map<Pattern, String> errors;
	final formKey = GlobalKey<FormState>();
	final controller = TextEditingController();
	final Iterable<String> alreadyExists;
	final NavigatorState navigator;

  	FileDialog({
		Key? key, 
		required this.title, 
		required this.errors,
		required this.alreadyExists,
		required this.navigator
	}): super(key: key);

	@override
	Widget build(BuildContext context) {
		return AlertDialog(
			title: Text(title),
			content: Form(
				key: formKey,
				child: TextFormField(
					autofocus: true,
					controller: controller,
					validator: (value) {
						if (value == null || value == "") {
							return "The field cannot be empty";
						}
						for (final name in alreadyExists) {
							if (name == value) {
								return "The file already exists";
							}
						}
						for (final pattern in errors.keys) {
							if (pattern.allMatches(value).isNotEmpty) {
								return errors[pattern];
							}
						}
						return null;
					},							
				)
			),
			actions: [
				TextButton(
					child: const Text("Cancel"),
					onPressed: () {
						navigator.pop();
					},
				),
				TextButton(
					child: const Text("OK"),
					onPressed: () {
						if (formKey.currentState!.validate()) {
							navigator.pop(controller.text);
						}
					}, 
				)
			]
		);
	}
}