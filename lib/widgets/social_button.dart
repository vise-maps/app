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
/// social_button.dart - The design and basic functionality of a social sign-in button.
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart' show AuthProvider;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:visemaps/utils/login_icons.dart';

abstract class SocialButton<P extends AuthProvider> extends StatelessWidget {
	final double backgroundOpacity;
	final Color color;
	final IconData icon;
	final String name;
	final bool compact;
	final P Function() provider;

	const SocialButton({
		Key? key,
		required this.backgroundOpacity,
		required this.color,
		required this.icon,
		required this.name,
		required this.provider,
		this.compact = false
	}) : super(key: key);

	@protected
	Widget buildIcon(BuildContext context) {
		return Icon(
			icon,
			color: color,
			size: getSize(context)
		);
	}

	@protected
	double getSize(BuildContext context) {
		return compact ? 28 : 17.5;
	}

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: () async {
				try {
					final P provider = this.provider();
					if (provider is GoogleAuthProvider) {
						provider.addScope('email');
						provider.addScope('profile');	
					}
					final credentials = await FirebaseAuth.instance.signInWithPopup(provider);
					if (credentials.user != null) {
						context.go('/browse');
					}
				} catch (e) {
					showCupertinoDialog(
						context: context, 
						builder: (BuildContext context) => CupertinoAlertDialog(
							title: const Text('Error'),
							content: Text(e.toString()),
							actions: [
								CupertinoDialogAction(
									child: const Text('OK'),
									onPressed: () => Navigator.pop(context),
								)
							],
						)
					);
				}
			},
			child: Container(
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
			)
		);
	}
}

class AppleButton extends SocialButton<OAuthProvider> {
	const AppleButton({Key? key, compact = false}): super(
		color: const Color(0xFF000000),
		backgroundOpacity: 0.03,
		icon: LoginIcons.apple,
		name: 'Apple',
		compact: compact,
		key: key,
		provider: getProvider
	);

	static OAuthProvider getProvider() {
		return OAuthProvider('apple.com')
			..addScope('email')
			..addScope('name');
	}
}

class TwitterButton extends SocialButton<TwitterAuthProvider> {
	const TwitterButton({Key? key, compact = false}): super(
		color: const Color(0xFF47ACDF),
		backgroundOpacity: 0.1,
		icon: LoginIcons.twitter,
		name: 'Twitter',
		compact: compact,
		key: key,
		provider: TwitterAuthProvider.new
	);
}

class GoogleButton extends SocialButton<GoogleAuthProvider> {
	const GoogleButton({Key? key, compact = false}): super(
		color: const Color(0xFFF49992),
		backgroundOpacity: 0.08,
		icon: LoginIcons.google,
		name: 'Google',
		compact: compact,
		key: key,
		provider: GoogleAuthProvider.new
	);

	/*@override
	Widget buildIcon(BuildContext context) {
		final size = getSize(context);
		return Stack(
			children: [
				Container(
					width: size,
					height: size,
					transform: Matrix4.rotationZ(pi / 4),
					transformAlignment: Alignment.center,
					decoration: BoxDecoration(
						shape: BoxShape.circle,
						border: Border(
							bottom: BorderSide(
								color: const Color(0x00000000),
								width: size / 5,
							),
							left: BorderSide(
								color: const Color(0x00000000),
								width: size / 5,
							),
							right: BorderSide(
								color: const Color(0xff3a7cec),
								width: size / 5,
							),
							top: BorderSide(
								color: const Color(0x00000000),
								width: size / 5,
							),
						)
					),
				),
				Container(
					width: size,
					height: size,
					decoration: BoxDecoration(
						shape: BoxShape.circle,
						border: Border(
							bottom: BorderSide(
								color: const Color(0xff2ba14b),
								width: size / 5,
							),
							left: BorderSide(
								color: const Color(0xfff1b500),
								width: size / 5,
							),
							right: BorderSide(
								color: const Color(0x00000000),
								width: size / 5,
							),
							top: BorderSide(
								color: const Color(0xffe33e2b),
								width: size / 5,
							),
						)
					),
				),
				Positioned(
					top: size / 2.5,
					right: 0,
					child: ClipRRect(
						borderRadius: BorderRadius.only(bottomRight: Radius.circular(size / 10)),
						child: Container(
							height: size / 5,
							width: size / 1.875,
							color: const Color(0xff3a7cec),
						)
					)
				)
			]
		);
	}*/
}