// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:visemaps/fs.dart';
import 'package:visemaps/widgets/login_field.dart';
import 'package:visemaps/widgets/controlled.dart';
import 'package:visemaps/password.dart';
import 'package:visemaps/painters/sign.dart';
import 'package:visemaps/painters/signup.dart';
import 'package:visemaps/social_button.dart';


class SignUpDesktop extends ControlledWidget {
	SignUpDesktop({Key? key}) : super(key: key);
	
	final TextEditingController email = TextEditingController();
	final PasswordController password = PasswordController();
	final PasswordController confirm = PasswordController();
	final TextEditingController name = TextEditingController();

	@override
	void dispose() {
		email.dispose();
		password.dispose();
		confirm.dispose();
		name.dispose();
	}

	@override
	Widget build(BuildContext context) {
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
                final u = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email.text,
                  password: password.text,
                );

                await u.user!.updateDisplayName(name.text);
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
									color: const Color(0xFFEF356A),
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
							children: [
								Expanded(
									child: GoogleButton(
										onTap: () async {
											try {
												final GoogleSignIn signIn = GoogleSignIn(
													scopes: [
														'email',
														'profile',
													],
												);
												final account = await signIn.signIn();
												if (account == null) {
													return;
												}
												final authentication = await account.authentication;
												final u = await FirebaseAuth.instance.signInWithCredential(
													GoogleAuthProvider.credential(
														idToken: authentication.idToken,
														accessToken: authentication.accessToken,
													)
												);
												FileSystemEntity.user = u.user!.uid;
												Navigator.pop(context);
											}  catch (e) {
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
									),
								),
								const SizedBox(width: 20),
								Expanded(
									child: AppleButton(
										onTap: () {

										},
									)
								),
								const SizedBox(width: 20),
								Expanded(
									child: TwitterButton(
										onTap: () {

										},
									)
								),
							],
						)
					]
				),
			)
		);
	}
}

class SignUp extends ControlledWidget {
	final TextEditingController email = TextEditingController();
	final TextEditingController name = TextEditingController();

  SignUp({Key? key}) : super(key: key);

	@override
	void dispose() {
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
							children: [
								Expanded(
									child: GoogleButton(
										onTap: () async {
                      try {
                        final signIn = GoogleSignIn(
                          scopes: [
                            'email',
                            'profile',
                          ],
                                          );
                        final account = await signIn.signIn();
                        if (account == null) {
                          return;
                        }
                        final authentication = await account.authentication;
                        final u = await FirebaseAuth.instance.signInWithCredential(
                          GoogleAuthProvider.credential(
                            idToken: authentication.idToken,
                            accessToken: authentication.accessToken,
                          )
                        );
                        FileSystemEntity.user = u.user!.uid;
                        Navigator.pop(context);
                      }  catch (e) {
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
										compact: true
									)
								),
								const SizedBox(width: 20),
								Expanded(
									child: AppleButton(onTap: () {}, compact: true)
								),
								const SizedBox(width: 20),
								Expanded(
									child: TwitterButton(onTap: () {}, compact: true)
								),
							],
						),
						const SizedBox(height: 40),
						GestureDetector(
							onTap: () async {
								final String? password = await Navigator.pushNamed<String>(
									context, 
									'/sign-up/password/'
								);

								if (password != null) {
									try {
										final u = await FirebaseAuth.instance.createUserWithEmailAndPassword(
											email: email.text,
											password: password
										);
										FileSystemEntity.user = u.user!.uid;
										Navigator.pop(context);
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
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(8),
									color: const Color(0xFFF2F2F7)
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

class SignUpPasswords extends ControlledWidget {
	final TextEditingController password = TextEditingController();
	final TextEditingController confirmPassword = TextEditingController();

  	SignUpPasswords({Key? key}) : super(key: key);

	@override
	void dispose() {
		password.dispose();
		confirmPassword.dispose();
	}

	@override
	Widget build(BuildContext context) {
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
								color: const Color(0xFFEF356A),
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