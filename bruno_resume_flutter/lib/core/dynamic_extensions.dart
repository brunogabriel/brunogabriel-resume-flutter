extension DynamicList on List<dynamic> {
  List<String> convertToStringList() => map((e) => e.toString()).toList();
}
