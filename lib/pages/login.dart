// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:visemaps/widgets/login_field.dart';
import 'package:visemaps/controllers/password.dart';
import 'package:visemaps/painters/sign.dart';
import 'package:visemaps/widgets/social_button.dart';

class Login extends StatefulWidget {
	const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
	final TextEditingController email = TextEditingController();
	final PasswordController password = PasswordController();
	final ValueNotifier<bool> remember = ValueNotifier(true);

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
    remember.dispose();
  }

	@override
	Widget build(BuildContext context) {
		final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Color primary = CupertinoTheme.of(context).primaryColor;
		const Text heading = Text(
			'Log In',
			style: TextStyle(
				color: Color(0xFF000000),
				fontSize: 47,
				fontWeight: FontWeight.w700,
				letterSpacing: -0.41,
			)
		);

		return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 51,
          horizontal: 16
        ),
        child: mediaQuery.size.width >= 600 ? SizedBox(
          width: 538,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heading,
              const SizedBox(height: 32),
              SizedBox(
                height: 232,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 12.5),
                        LoginField(
                          controller: email,
                          placeholder: 'Email'
                        ),
                        const SizedBox(height: 20),
                        LoginField(
                          controller: password,
                          placeholder: 'Password'
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () async {
                            try {
                              await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: email.text,
                                password: password.text
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
                                      onPressed: () => Navigator.pop(context)
                                    )
                                  ]
                                )
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8
                            ),
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: primary
                            ),
                            child: const Text(
                              'Log-in',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.41,
                              ),
                            ),
                          )
                        ),
                        const SizedBox(height: 32),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {

                              },
                              child: const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: Color(0x80000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.41,
                                  decoration: TextDecoration.underline,
                                )
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                remember.value = !remember.value;
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      color: Color(0x80000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41,
                                    )
                                  ),
                                  const SizedBox(width: 4),
                                  ValueListenableBuilder<bool>(
                                    valueListenable: remember,
                                    builder: (BuildContext context, bool remember, Widget? child) => Container(
                                      width: 14,
                                      height: 14,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: remember ? primary : const Color(0xFFF4F4F4),
                                        border: remember ? null : Border.all(
                                          color: const Color(0xFF000000),
                                          width: 1
                                        )
                                      ),
                                      child: remember ? const Icon(
                                        CupertinoIcons.checkmark_alt,
                                        size: 10,
                                        color:Color(0xFFFFFFFF)
                                      ) : null,
                                    )
                                  )
                                ]
                              )
                            ),
                          ],
                        ),
                        const SizedBox(height: 12.5),
                      ],
                    )),
                    const SizedBox(width: 48),
                    Container(
                      height: 220,
                      width: 1,
                      color: const Color(0xFFD9D9D9),
                    ),
                    const SizedBox(width: 48),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          SizedBox(width: 30),
                          GoogleButton(),
                          SizedBox(height: 20),
                          AppleButton(),
                          SizedBox(height: 20),
                          TwitterButton(),
                          SizedBox(height: 30),
                        ]
                      )
                    )
                  ],
                )
              )
            ]
          )
        ) : Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            heading,
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
              controller: email,
              placeholder: 'Email'
            ),
            const SizedBox(height: 6),
            LoginField(
              controller: password,
              placeholder: 'Password'
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                Expanded(
                  child: GoogleButton(compact: true)
                ),
                SizedBox(width: 20),
                Expanded(
                  child: AppleButton(compact: true)
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TwitterButton(compact: true)
                ),
              ],
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () async {
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email.text,
                    password: password.text
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
                          onPressed: () => Navigator.pop(context)
                        )
                      ]
                    )
                  );
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
                  color: primary
                ),
                child: const Text(
                  'Log-in',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.41,
                  ),
                ),
              )
            ),
            const SizedBox(height: 12),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8
                ),
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0x80000000),
                    fontSize: 17,
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