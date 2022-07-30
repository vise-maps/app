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
/// tree_layout.dart - Flutter implementation of non-layered tidy tree algorithm.
/// Unlike tree.dart, this a custom file, even not from Vise Maps v0
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:visemaps/controllers/editor_controller.dart';
import 'package:visemaps/utils/tree.dart';
import 'package:visemaps/controllers/item.dart';
import 'dart:math' as math;

class BoundingBox {
	final Offset offset;

	BoundingBox(double gap, double bottomPadding) : offset = Offset(gap, bottomPadding);

	Size add(Size size) {
		return size + offset;
	}

	Size restore(Size size) {
		return size - offset as Size;
	}

	Offset remove(double x, double y) {
		return Offset(x + offset.dx / 2, y);
	}
}

class TreeLayoutDelegate extends MultiChildLayoutDelegate {
	Tree? tree;
	Item item;
	BoundingBox boundingBox;

	TreeLayoutDelegate({
		required this.item,
		required this.boundingBox,
		Listenable? relayout
	}) : super(relayout: relayout);

	@override
	void performLayout(Size size) {
		tree = convert(item);
		tree!.layout();
		positionItem(tree!, item);
	}

	Tree convert(Item item, [double y = 16]) {
		final Size size = boundingBox.add(
			layoutChild(
				item,
				const BoxConstraints(
					maxWidth: 333,
					minWidth: 50,
					minHeight: 50
				)
			)
		);

		return Tree(
			size,
			y,
			[
				for (final Item child in item.children) (
					convert(child, y + size.height)
				)
			],
			item.color
		);
	}

	void positionItem(Tree tree, Item item) {
		positionChild(item, boundingBox.remove(tree.x, tree.y));
		for (int i = 0; i < tree.children.length; i++) {
			positionItem(tree.children[i], item.children[i]);
		}
	}

	@override
	bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}

class RenderTreeLayoutBox extends RenderCustomMultiChildLayoutBox {
	bool fit;

	RenderTreeLayoutBox({
		List<RenderBox>? children,
		required this.fit,
		required TreeLayoutDelegate delegate
	}) : super(
		delegate: delegate,
		children: children
	);

	@override
	void paint(PaintingContext context, Offset offset) {
		final TreeLayoutDelegate delegate = this.delegate as TreeLayoutDelegate;
		if (delegate.tree == null) {
			return;
		}
		if (fit)  {
			final Size treeSize = delegate.boundingBox.add(delegate.tree!.getFullBounds().size);
			final Size newSize = constraints.constrainSizeAndAttemptToPreserveAspectRatio(treeSize);
			final double scaleX = newSize.width / treeSize.width;
			final double scaleY = newSize.height / treeSize.height;
			final double scale = math.min(scaleX, scaleY);
			context.pushTransform(
				needsCompositing,
				offset,
				Matrix4.diagonal3(Vector3(scale, scale, 1)),
				paintWithArrows,
				oldLayer: layer is TransformLayer ? layer! as TransformLayer : null
			);
		} else {
			paintWithArrows(context, offset);
		}
	}

	void paintWithArrows(PaintingContext context, Offset offset) {
		super.paint(context, offset);
		final TreeLayoutDelegate delegate = this.delegate as TreeLayoutDelegate;
		if (delegate.tree == null) {
			return;
		}
		context.canvas.translate(offset.dx, offset.dy);
		for (final Tree child in delegate.tree!.children) {
			drawArrow(context.canvas, delegate.tree!, child);
		}
	}

	BoundingBox get boundingBox {
		return (delegate as TreeLayoutDelegate).boundingBox;
	}

	void drawArrow(Canvas canvas, Tree parent, Tree child) {
		final Size parentSize = boundingBox.restore(parent.size);
		final Size childSize = boundingBox.restore(child.size);
		final Offset begin = Offset(
			parent.x + boundingBox.offset.dx / 2 + parentSize.width / 2,
			parent.y + parentSize.height
		);
		final Offset end = Offset(
			child.x + boundingBox.offset.dx / 2 + childSize.width / 2 + 8,
			child.y
		);
		canvas.drawPath(
			Path()
				..moveTo(begin.dx, begin.dy)
				..lineTo(end.dx - 8, end.dy - 10)
				..relativeLineTo(0, 10)
				..relativeLineTo(8, -8)
				..relativeLineTo(-8, 8)
				..relativeLineTo(-8, -8),
			Paint()
				..shader = LinearGradient(
					colors: [
						parent.color,
						child.color
					],
					stops: const [
						0.0,
						1.0
					]
				).createShader(Rect.fromPoints(begin, end))
				..style = PaintingStyle.stroke
				..strokeWidth = 3
				..strokeJoin = StrokeJoin.round
				..strokeCap = StrokeCap.round
		);
		for (final Tree grand in child.children) {
			drawArrow(canvas, child, grand);
		}
	}
}

class TreeLayout extends CustomMultiChildLayout {
	final bool fit;

	TreeLayout.editable({
		required EditorController editor,
		Key? key
	}): fit = false, super(
		delegate: TreeLayoutDelegate(
			item: editor.file!,
			boundingBox: BoundingBox(80, 80),
			relayout: editor
		),
		key: key,
		children: editor.file!.getGrid(editor)
	);

	TreeLayout({
		required Item item,
		Key? key
	}): fit = true, super(
		delegate: TreeLayoutDelegate(
			item: item,
			boundingBox: BoundingBox(80, 80)
		),
		key: key,
		children: item.getGrid()
	);

	@override
	RenderTreeLayoutBox createRenderObject(BuildContext context) {
		return RenderTreeLayoutBox(
			delegate: delegate as TreeLayoutDelegate,
			fit: fit
		);
	}

	@override
	void updateRenderObject(BuildContext context, RenderTreeLayoutBox renderObject) {
		renderObject.delegate = delegate as TreeLayoutDelegate;
		renderObject.fit = fit;
	}
}