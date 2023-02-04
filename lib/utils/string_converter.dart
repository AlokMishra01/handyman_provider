extension StringConvert on String {
  String removeTags() {
    RegExp exp = RegExp(
      r"<[^>]*>",
      multiLine: true,
      caseSensitive: true,
    );

    return replaceAll(exp, '');
  }
}
