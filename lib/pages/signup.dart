// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:visemaps/widgets/login_field.dart';
import 'package:visemaps/controllers/password.dart';
import 'package:visemaps/painters/sign.dart';
import 'package:visemaps/painters/signup.dart';
import 'package:visemaps/widgets/social_button.dart';


class SignUpDesktop extends StatefulWidget {
	const SignUpDesktop({Key? key}) : super(key: key);

	@override
	SignUpDesktopState createState() => SignUpDesktopState();
}

class SignUpDesktopState extends State<SignUpDesktop> {
	final TextEditingController email = TextEditingController();
	final PasswordController password = PasswordController();
	final PasswordController confirm = PasswordController();
	final TextEditingController name = TextEditingController();

	@override
	void dispose() {
		super.dispose();
		email.dispose();
		password.dispose();
		confirm.dispose();
		name.dispose();
	}

	@override
	Widget build(BuildContext context) {
		final Color primary = CupertinoTheme.of(context).primaryColor;
		return Container(
			alignment: Alignment.center,
			color: const Color(0xFFFFFFFF),
			child: SizedBox(
				width: 720,
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.center,
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						const Text(
							'Sign Up',
							style: TextStyle(
								color: Color(0xFF000000),
								fontSize: 47,
								fontWeight: FontWeight.w700,
								letterSpacing: -0.41,
							)
						),
						const SizedBox(height: 32),
						SizedBox(
							width: 580,
							child: Row(
								children: [
									Expanded(
										child: LoginField(
											controller: name,
											placeholder: 'Full Name'
										),
									),
									const SizedBox(width: 20),
									Expanded(
										child: LoginField(
											controller: password,
											placeholder: 'Password'
										),
									),
								],
							),
						),
						const SizedBox(height: 20),
						SizedBox(
							width: 580,
							child: Row(
								children: [
									Expanded(
										child: LoginField(
											controller: email,
											placeholder: 'Email'
										),
									),
									const SizedBox(width: 20),
									Expanded(
										child: LoginField(
											controller: confirm,
											placeholder: 'Confirm Password'
										),
									),
								],
							)
						),
						const SizedBox(height: 20),
						GestureDetector(
							onTap: () async {
								final credentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(
									email: email.text,
									password: password.text,
								);
								await credentials.user!.updateDisplayName(name.text);
								Navigator.of(context).pushReplacementNamed('/');
							},
							child: Container(
								padding: const EdgeInsets.symmetric(
									vertical: 14,
									horizontal: 12
								),
								width: 580,
								alignment: Alignment.center,
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(4),
									color: primary,
								),
								child: const Text(
									'Sign Up',
									style: TextStyle(
										color: Color(0xFFFFFFFF),
										fontSize: 18,
										fontWeight: FontWeight.w700,
										letterSpacing: -0.41,
									)
								),
							)
						),
						const SizedBox(height: 32),
						const Text(
							'OR',
							style: TextStyle(
								color: Color(0x80000000),
								fontSize: 12,
								fontWeight: FontWeight.w700,
							)
						),
						const SizedBox(height: 32),
						Row(
							children: const [
								Expanded(child: GoogleButton()),
								SizedBox(width: 20),
								Expanded(child: AppleButton()),
								SizedBox(width: 20),
								Expanded(child: TwitterButton()),
							],
						)
					]
				),
			)
		);
	}
}

class SignUp extends StatefulWidget {
	const SignUp({Key? key}) : super(key: key);

	@override
	SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
	final TextEditingController email = TextEditingController();
	final TextEditingController name = TextEditingController();


	@override
	void dispose() {
		super.dispose();
		email.dispose();
		name.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
				child: Container(
				padding: const EdgeInsets.symmetric(
					vertical: 51,
					horizontal: 16
				),
				child: Column(
					children: [
						const Text(
							'Sign Up',
							style: TextStyle(
								color: Color(0xFF000000),
								fontSize: 47,
								fontWeight: FontWeight.w700,
								letterSpacing: -0.41,
							)
						),
						const SizedBox(height: 32),
						CustomPaint(
							painter: SignPainter(),
							child: const AspectRatio(
								aspectRatio: 306 / 258,
								child: SizedBox(width: double.infinity),
							),
						),
						const SizedBox(height: 40),
						LoginField(
							controller: name,
							placeholder: 'Full Name'
						),
						const SizedBox(height: 6),
						LoginField(
							controller: email,
							placeholder: 'Email'
						),
						const SizedBox(height: 40),
						Row(
							children: const [
								Expanded(child: GoogleButton(compact: true)),
								SizedBox(width: 20),
								Expanded(child: AppleButton(compact: true)),
								SizedBox(width: 20),
								Expanded(
									child: TwitterButton(compact: true)
								),
							],
						),
						const SizedBox(height: 40),
						GestureDetector(
							onTap: () async {
								final String? password = await Modular.to.pushNamed<String>(
									'/sign-up/password/'
								);

								if (password != null) {
									try {
										await FirebaseAuth.instance.createUserWithEmailAndPassword(
											email: email.text,
											password: password
										);
										Modular.to.navigate('/');
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
								}
							},
							child: Container(
								padding: const EdgeInsets.symmetric(
									vertical: 14
								),
								width: double.infinity,
								alignment: Alignment.center,
								decoration: const BoxDecoration(
									borderRadius: BorderRadius.all(Radius.circular(8)),
									color: Color(0xFFF2F2F7)
								),
								child: const Text(
									'Continue',
									style: TextStyle(
										color: Color.fromRGBO(0, 0, 0, 0.85),
										fontSize: 18,
										fontWeight: FontWeight.w700,
										letterSpacing: -0.41,
									),
								),
							)
						)
					]
				)
			)
		);
	}
}

class SignUpPasswords extends StatefulWidget {
  	const SignUpPasswords({Key? key}) : super(key: key);

	@override
	SignUpPasswordsState createState() => SignUpPasswordsState();
}

class SignUpPasswordsState extends State<SignUpPasswords> {
	final TextEditingController password = TextEditingController();
	final TextEditingController confirmPassword = TextEditingController();


	@override
	void dispose() {
		super.dispose();
		password.dispose();
		confirmPassword.dispose();
	}

	@override
	Widget build(BuildContext context) {
		final Color primary = CupertinoTheme.of(context).primaryColor;
		return Container(
			padding: const EdgeInsets.symmetric(
				vertical: 51,
				horizontal: 16
			),
			child: Column(
				children: [
					const Text(
						'Sign Up',
						style: TextStyle(
							color: Color(0xFF000000),
							fontSize: 47,
							fontWeight: FontWeight.w700,
							letterSpacing: -0.41,
						)
					),
					const SizedBox(height: 32),
					CustomPaint(
						painter: SignUpPainter(),
						child: const AspectRatio(
							aspectRatio: 335 / 310,
							child: SizedBox(width: double.infinity),
						),
					),
					const SizedBox(height: 40),
					LoginField(
						controller: password,
						placeholder: 'Password'
					),
					const SizedBox(height: 6),
					LoginField(
						controller: confirmPassword,
						placeholder: 'Confirm Password'
					),
					const SizedBox(height: 40),
					GestureDetector(
						onTap: () {
							if (confirmPassword.text == password.text) {
								Navigator.pop(context, password.text);
							} else {
								showCupertinoDialog<void>(
									context: context,
									builder: (BuildContext context) => CupertinoAlertDialog(
										title: const Text('Error'),
										content: const Text('Passwords do not match'),
										actions: [
											CupertinoDialogAction(
												child: const Text('OK'),
												onPressed: () {
													Navigator.pop(context);
												},
											)
										],
									)
								);
							}
						},
						child: Container(
							padding: const EdgeInsets.symmetric(
								vertical: 14,
								horizontal: 12
							),
							width: double.infinity,
							alignment: Alignment.center,
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(4),
								color: primary,
							),
							child: const Text(
								'Sign Up',
								style: TextStyle(
									color: Color(0xFFFFFFFF),
									fontSize: 17,
									fontWeight: FontWeight.w700,
								)
							),
						)
					),
				]
			)
		);
	}
}