import 'package:flutter/widgets.dart';
import 'package:visemaps/login_icons.dart';

class SocialButton extends StatelessWidget {
	final double backgroundOpacity;
	final Color color;
	final IconData icon;
	final String name;
	final bool compact;
	final void Function() onTap;

	const SocialButton({
		Key? key,
		required this.backgroundOpacity,
		required this.color,
		required this.icon,
		required this.name,
		required this.onTap,
		this.compact = false
	}) : super(key: key);

	@protected
	Widget buildIcon(BuildContext context) {
		return Icon(
			icon,
			color: color,
			size: compact ? 28 : 17.5,
		);
	}

	@override
	Widget build(BuildContext context) {
		return Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(4),
				color: color.withOpacity(backgroundOpacity),
			),
			padding: const EdgeInsets.all(10),
			child: compact ? Center(child: buildIcon(context)) : Row(
				children: [
					buildIcon(context),
					const SizedBox(width: 4),
					Text(
						'Continue with $name',
						style: TextStyle(
							color: color,
							fontSize: 17,
							fontWeight: FontWeight.w500,
						),
					),
				],
			),
		);
	}
}

class AppleButton extends SocialButton {
	const AppleButton({Key? key, required void Function() onTap, compact = false}): super(
		color: const Color(0xFF000000),
		backgroundOpacity: 0.03,
		icon: LoginIcons.apple,
		name: 'Apple',
		onTap: onTap,
		compact: compact,
		key: key,
	);
}

class TwitterButton extends SocialButton {
	const TwitterButton({Key? key, required void Function() onTap, compact = false}): super(
		color: const Color(0xFF47ACDF),
		backgroundOpacity: 0.1,
		icon: LoginIcons.twitter,
		name: 'Twitter',
		onTap: onTap,
		compact: compact,
		key: key,
	);
}

class GoogleButton extends SocialButton {
	const GoogleButton({Key? key, required void Function() onTap, compact = false}): super(
		color: const Color(0xFFF49992),
		backgroundOpacity: 0.08,
		icon: LoginIcons.google,
		name: 'Google',
		onTap: onTap,
		compact: compact,
		key: key,
	);

	/*
	@override
	Widget buildIcon(BuildContext context) {
		return ShaderMask(
			child: super.buildIcon(context),
			shaderCallback: (Rect bounds) {
				
			},
		)
  	}
	*/
}