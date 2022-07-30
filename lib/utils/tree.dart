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
/// tree.dart - Dart implementation of non-layered tidy tree algorithm.
/// In Vise Maps v0, there has been a file called tree.ts, which is
/// TypeScript port from the npm package "non-layered-tidy-tree-layout"
///
/// Now, I've rewritten a TypeScript version of the algorithm to Dart.
/// Copyright (c) 2019 Michael Wong and 2022 Tomáš Wróbel
///
/// The algorithm used in that project is from the paper by A.J. van der Ploeg:
/// Drawing Non-layered Tidy Trees in Linear Time.
import 'dart:ui';

class Tree {
	List<Tree> children;

	double x = 0;
	double y;

	double prelim = 0;
	double modifier = 0;
	double change = 0;
	double shift = 0;

	Tree? leftThread;
	Tree? rightThread;
	Tree? extremeLeft;
	Tree? extremeRight;

	// sum of modifiers
	// at the extreme nodes
	double msel = 0;
	double mser = 0;

	Size size;
	Color color;

	Tree(this.size, this.y, this.children, this.color);

	void setExtremes() {
		if (children.isEmpty) {
			extremeLeft = this;
			extremeRight = this;
			msel = 0;
			mser = 0;
		} else {
			extremeLeft = children.first.extremeLeft;
			extremeRight = children.last.extremeRight;
			msel = children.first.msel;
			mser = children.last.mser;
		}
	}

	double get bottom => y + size.height;

	void moveSubtree(int index, int shiftIndex, double distance) {
		children[index].modifier += distance;
		children[index].msel += distance;
		children[index].mser += distance;
		// Are there intermediate children?
		if (shiftIndex != index - 1) {
			final int nr = index - shiftIndex;
			children[shiftIndex + 1].shift += distance / nr;
			children[index].shift -= distance / nr;
			children[index].change -= distance - distance / nr;
		}
	}

	Tree? get nextLeftContour => children.isEmpty ? leftThread : children.first;
	Tree? get nextRightContour => children.isEmpty ? rightThread : children.last;

	void setLeftThread(
		int index,
		Tree leftContour,
		/// Sum of modifiers
		double mscl
	) {
		final Tree li = children.first.extremeLeft!;
		li.leftThread = leftContour;
		// Change mod so that the sum of modifier after following thread is correct.
		final double difference = mscl - leftContour.modifier - children.first.msel;
		li.modifier += difference;
		li.prelim -= difference;
		// Update extreme node and its sum of modifiers.
		children.first.extremeLeft = children[index].extremeLeft;
		children.first.msel = children[index].msel;
	}

	void setRightThread(
		int index,
		Tree rightContour,
		/// Sum of modifiers
		double mser
	) {
		final Tree ri = children[index].extremeRight!;
		ri.rightThread = rightContour;
		// Change mod so that the sum of modifier after following thread is correct.
		final double difference = mser - rightContour.modifier - children[index].mser;
		ri.modifier += difference;
		ri.prelim -= difference;
		// Update extreme node and its sum of modifiers.
		children[index].extremeRight = children[index - 1].extremeRight;
		children[index].mser = children[index - 1].mser;
	}

	void separate(int index, IYL ih) {
		Tree? cr = children[index - 1];
		double mscr = cr.modifier;

		Tree? cl = children[index];
		double mscl = cl.modifier;

		while (cr != null && cl != null) {
			if (cr.bottom > ih.lowY) {
				ih = ih.next!;
			}

			final double distance = mscr + cr.prelim + cr.size.width - mscl - cl.prelim;

			if (distance > 0) {
				mscl += distance;
				moveSubtree(index, ih.index, distance);
			}

			final double leftY = cl.bottom;
			final double rightY = cr.bottom;

			if (rightY <= leftY) {
				cr = cr.nextRightContour;
				if (cr != null) {
					mscr += cr.modifier;
				}
			}
			if (rightY >= leftY) {
				cl = cl.nextLeftContour;
				if (cl != null) {
					mscl += cl.modifier;
				}
			}
		}

		// Set threads and update extreme nodes.
		// In the first case, the current subtree
		// must be taller than the left siblings.
		if (cr == null && cl != null) {
			setLeftThread(index, cl, mscl);
		} else if (cr != null && cl == null) {
			setRightThread(index, cr, mscr);
		}
	}

	void positionRoot() {
		// Position root between children, taking into account their mod.
		prelim = (
			children.first.prelim +
			children.first.modifier +
			children.last.modifier +
			children.last.prelim +
			children.last.size.width
		) / 2 - size.width / 2;
	}

	void firstWalk() {
		if (children.isEmpty) {
			setExtremes();
			return;
		}

		children.first.firstWalk();
		IYL ih = IYL.update(children.first.extremeLeft!.bottom, 0);

		for (int i = 1; i < children.length; i++) {
			children[i].firstWalk();
			final double minY = children[i].extremeRight!.bottom;
			separate(i, ih);
			ih = IYL.update(minY, i, ih);
		}

		positionRoot();
		setExtremes();
	}

	void secondWalk(double modsum) {
		modsum += modifier;
		x += prelim + modsum;
		for (var i = 0, d = 0.0, modsumdelta = 0.0; i < children.length; i++) {
			d += children[i].shift;
			modsumdelta += d + children[i].change;
			children[i].modifier += modsumdelta;
		}
		for (final Tree child in children) {
			child.secondWalk(modsum);
		}
	}

	void layout() {
		firstWalk();
		secondWalk(0.0);
	}

	Rect getFullBounds() {
		final Rect rect = Offset(x, y) & size;
		for (final Tree child in children) {
			rect.expandToInclude(child.getFullBounds());
		}
		return rect;
	}
}

/// A linked list of the indexes of left
/// siblings and their lowest vertical coordinate.
class IYL {
	final double lowY;
	final int index;
	final IYL? next;

	const IYL(this.lowY, this.index, [this.next]);

	factory IYL.update(double minY, int index, [IYL? ih]) {
		// Remove siblings that are hidden by the new subtree.
		while (ih != null && minY >= ih.lowY) {
			// Prepend the new subtree
			ih = ih.next;
		}
		return IYL(minY, index, ih);
	}
}