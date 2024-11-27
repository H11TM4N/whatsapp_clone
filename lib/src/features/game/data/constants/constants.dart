import 'package:rock_paper_scissors/src/shared/shared.dart';

const ROCK = 'rock';
const PAPER = 'paper';
const SCISSORS = 'scissors';
const LIZARD = 'lizard';
const SPOCK = 'spock';

const GAME_OPTIONS = [
  ROCK,
  PAPER,
  SCISSORS,
];

const BONUS_GAME_OPTIONS = [
  ROCK,
  PAPER,
  SCISSORS,
  LIZARD,
  SPOCK,
];

Map<String, String> _pickToPath = {
  ROCK: rockTile,
  PAPER: paperTile,
  SCISSORS: scissorsTile,
  LIZARD: lizardTile,
  SPOCK: spockTile,
};

String nameToPath(String name) {
  return _pickToPath[name] ?? '';
}

String pathToName(String path) {
  return _pickToPath.entries
      .firstWhere(
        (entry) => entry.value == path,
        orElse: () => throw ArgumentError('Invalid path: $path'),
      )
      .key;
}
