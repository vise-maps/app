import 'package:flutter/widgets.dart';

abstract class ControlledWidget extends StatefulWidget {
	const ControlledWidget({Key? key}) : super(key: key);

	@override
	State<ControlledWidget> createState() {
		return ControlledWidgetState();
  	}

	@protected
	void dispose();

	@protected
	Widget build(BuildContext context);
}

class ControlledWidgetState extends State<ControlledWidget> {
	@override
	void dispose() {
		super.dispose();
		widget.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return widget.build(context);
	}
}