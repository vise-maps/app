import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visemaps/painters/welcome.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		final MediaQueryData mediaQuery = MediaQuery.of(context);
		const Text heading = Text(
			'Welcome to Vise Maps',
			style: TextStyle(
				color: Color(0xFF000000),
				fontSize: 47,
				fontWeight: FontWeight.w700,
				letterSpacing: -0.41,
			)
		);

		return Container(
			padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
			color: const Color(0xFFFFFFFF),
			alignment: Alignment.center,
			child: mediaQuery.size.width > 415
				? Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						heading,
						const SizedBox(height: 56),
						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								GestureDetector(
									onTap: () {
										context.go('/login/');
									},
									child: Container(
										padding: const EdgeInsets.symmetric(
											horizontal: 14,
											vertical: 6
										),
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(4),
											color: Theme.of(context).primaryColor
										),
										child: const Text(
											'Log-in',
											style: TextStyle(
												color: Color(0xFFFFFFFF),
												fontSize: 16,
												fontWeight: FontWeight.w700,
												letterSpacing: -0.41,
											),
										),
									)
								),
								const SizedBox(width: 16),
								GestureDetector(
									onTap: () {
										context.go('/sign-up/');
									},
									child: const DecoratedBox(
										decoration: BoxDecoration(
											borderRadius: BorderRadius.all(Radius.circular(4)),
											color: Color.fromRGBO(0, 0, 0, 0.86)
										),
										child: Padding(
											padding: EdgeInsets.symmetric(
												horizontal: 14,
												vertical: 6
											),
											child: Text(
												'Sign up',
												style: TextStyle(
													color: Color(0xFFFFFFFF),
													fontSize: 16,
													fontWeight: FontWeight.w700,
													letterSpacing: -0.41,
												),
											)
										)
									),
								),
							]
						)
					],
				)
				: Column(
					children: [
						heading,
						const Spacer(),
						CustomPaint(
							painter: WelcomePainter(),
							child: const AspectRatio(
								aspectRatio: 390 / 334,
								child: SizedBox(width: double.infinity),
							),
						),
						const Spacer(),
						GestureDetector(
							onTap: () {
								context.go('/login/');
							},
							child: Container(
								padding: const EdgeInsets.symmetric(
									horizontal: 6,
									vertical: 14
								),
								width: double.infinity,
								alignment: Alignment.center,
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(4),
									color: Theme.of(context).primaryColor
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
							onTap: () {
								context.go('/sign-up/');
							},
							child: Container(
								padding: const EdgeInsets.symmetric(
									horizontal: 6,
									vertical: 14
								),
								width: double.infinity,
								alignment: Alignment.center,
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(4),
									color: const Color.fromRGBO(0, 0, 0, 0.86)
								),
								child: const Text(
									'Sign up',
									style: TextStyle(
										color: Color(0xFFFFFFFF),
										fontSize: 17,
										fontWeight: FontWeight.w700,
										letterSpacing: -0.41,
									),
								),
							)
						),
					],
				),
		);
	}
}