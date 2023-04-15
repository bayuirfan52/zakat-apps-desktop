import 'package:html/parser.dart';

extension HtmlExtensions on String {
  String get parseHtmlString {
    final document = parse(this);
    final parsedString = parse(document.body?.text ?? '').documentElement?.text ?? '';

    return parsedString;
  }
}

extension StringExtensions on String? {
  /// Returns the first [n] characters of the string.
  ///
  /// n is optional, by default it returns the first character of the string.
  ///
  /// If [n] provided is longer than the string's length, the string will be returned.
  ///
  /// Faster than using
  /// ```dart
  /// substring(0,count)
  /// ```
  /// ### Example 1
  /// ```dart
  /// String foo = 'hello world';
  /// String firstChars = foo.first(); // returns 'h'
  /// ```
  /// ### Example 2
  /// ```dart
  /// String foo = 'hello world';
  /// bool firstChars = foo.first(3); // returns 'hel'
  /// ```
  String? first({int n = 1}) {
    if (this == null) {
      return null;
    }
    if (this!.isEmpty) {
      return this;
    }
    if (this!.length < n) {
      return this;
    }
    return this!.substring(0, n);
  }
}
