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
/// stream_notifier.dart - Simple Flutter wrapper around a stream.
import 'dart:async';
import 'package:flutter/foundation.dart';

class StreamNotifier<T> extends ValueNotifier<T?> {
	StreamNotifier(Stream<T> stream) : super(null)  {
		subscription = stream.listen(update);
	}

	@protected
	void update(T? newValue) {
		value = newValue;
	}

	@override
	void dispose() {
		super.dispose();
		subscription.cancel();
	}

	late StreamSubscription<T> subscription;
}