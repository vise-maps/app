extension UriName on Uri {
	String get name {
		final pathSegments = ['home', ...this.pathSegments];
		if (pathSegments.last == '') {
			pathSegments.removeLast();
		}
		return pathSegments.last;
	}
}