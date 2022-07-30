import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/pages/tree_layout.dart';
import 'package:visemaps/pages/list_layout.dart';
import 'package:visemaps/utils/uri_name.dart';

class Editor extends StatelessWidget {
	const Editor({Key? key}): super(key: key);

	@override
	Widget build(BuildContext context) {
		final editor = Modular.get<EditorController>();

		return Column(
			children: [
				if (MediaQuery.of(context).size.width >= 600) ...[
					Container(
						width: double.infinity,
						height: 36,
						color: const Color.fromRGBO(249, 249, 249, 0.95),
					),
					Container(
						width: double.infinity,
						padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
						child: Stack(
							alignment: Alignment.center,
							children: [
								Text(
									Modular.args.uri.name,
									style: const TextStyle(
										fontSize: 18,
										fontWeight: FontWeight.w600,
										color: Color(0xFF000000)
									)
								),
								Positioned(
									right: 0,
									child: GestureDetector(
										onTap: editor.toggleList,
										child: AnimatedBuilder(
											animation: editor,
											builder: (context, child) {
												return Icon(
													editor.list 
														? CupertinoIcons.square_split_2x2
														: CupertinoIcons.list_bullet,
													size: 20,
												);
											}
										)
									)
								)
							]
						),
					),
				] else  ...[
					Padding(
						padding: const EdgeInsets.fromLTRB(11, 16, 19, 16),
						child: Row(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								if (Modular.to.canPop()) ...[
									GestureDetector(
										onTap: () {
											Modular.to.pop();
										},
										child: const Icon(
											CupertinoIcons.back,
											size: 24,
											color: Color(0xFF000000)
										)
									),
									const SizedBox(width: 11),
								],
								Text(
									Modular.args.uri.name,
									style: const TextStyle(
										fontSize: 17,
										fontWeight: FontWeight.w600,
										letterSpacing: -0.41,
										color: Color(0xFF000000)
									)
								),
								const Spacer(),
								 GestureDetector(
									onTap: editor.toggleList,
									child: AnimatedBuilder(
										animation: editor,
										builder: (context, child) {
											return Icon(
												editor.list 
													? CupertinoIcons.square_split_2x2
													: CupertinoIcons.list_bullet,
												size: 24,
											);
										}
									)
								),
								const SizedBox(width: 20),
								GestureDetector(
									onTap: () {
									},
									child: const Icon(
										CupertinoIcons.ellipsis_circle,
										size: 24,
										color: Color(0xFF000000)
									)
								),
							]
						)
					),
					const SizedBox(height: 8),
				],
				Expanded(
					child: editor.list ? ListLayout(listenable: editor) : TreeLayout.editable(editor: editor),
				)
			]
		);
	}
}