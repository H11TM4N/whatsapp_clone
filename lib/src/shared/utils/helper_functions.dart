import 'dart:math';

String selectRandomString(List<String> strings) {
  if (strings.isEmpty) {
    throw ArgumentError('The list of strings cannot be empty.');
  }

  final random = Random();
  final index = random.nextInt(strings.length);
  return strings[index];
}
