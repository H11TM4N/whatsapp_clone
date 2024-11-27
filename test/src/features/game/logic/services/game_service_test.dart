import 'package:flutter_test/flutter_test.dart';
import 'package:rock_paper_scissors/src/features/game/data/data.dart';
import 'package:rock_paper_scissors/src/features/game/logic/services/services.dart';

void main() {
  late GameService gameService;

  setUp(() {
    gameService = GameService();
  });

  group('GameService - determineGameResult', () {
    test('returns draw when picks are the same', () {
      expect(
        gameService.determineGameResult(yourPick: ROCK, housePick: ROCK),
        GameRes.draw,
      );
    });

    test('returns win when player beats house', () {
      expect(
        gameService.determineGameResult(yourPick: ROCK, housePick: SCISSORS),
        GameRes.win,
      );
      expect(
        gameService.determineGameResult(yourPick: PAPER, housePick: ROCK),
        GameRes.win,
      );
      expect(
        gameService.determineGameResult(yourPick: SCISSORS, housePick: PAPER),
        GameRes.win,
      );
    });

    test('returns lose when house beats player', () {
      expect(
        gameService.determineGameResult(yourPick: ROCK, housePick: PAPER),
        GameRes.lose,
      );
      expect(
        gameService.determineGameResult(yourPick: PAPER, housePick: SCISSORS),
        GameRes.lose,
      );
      expect(
        gameService.determineGameResult(yourPick: SCISSORS, housePick: ROCK),
        GameRes.lose,
      );
    });
  });

  group('GameService - determineBonusGameResult', () {
    test('returns draw when picks are the same', () {
      expect(
        gameService.determineBonusGameResult(yourPick: SPOCK, housePick: SPOCK),
        GameRes.draw,
      );
    });

    test('returns win when player beats house', () {
      expect(
        gameService.determineBonusGameResult(
            yourPick: ROCK, housePick: SCISSORS),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: ROCK, housePick: LIZARD),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: PAPER, housePick: ROCK),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: PAPER, housePick: SPOCK),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: SCISSORS, housePick: PAPER),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: SCISSORS, housePick: LIZARD),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: LIZARD, housePick: SPOCK),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: LIZARD, housePick: PAPER),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: SPOCK, housePick: SCISSORS),
        GameRes.win,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: SPOCK, housePick: ROCK),
        GameRes.win,
      );
    });

    test('returns lose when house beats player', () {
      expect(
        gameService.determineBonusGameResult(yourPick: ROCK, housePick: PAPER),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: ROCK, housePick: SPOCK),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: PAPER, housePick: SCISSORS),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: PAPER, housePick: LIZARD),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: SCISSORS, housePick: ROCK),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: SCISSORS, housePick: SPOCK),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: LIZARD, housePick: ROCK),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: LIZARD, housePick: SCISSORS),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(yourPick: SPOCK, housePick: PAPER),
        GameRes.lose,
      );
      expect(
        gameService.determineBonusGameResult(
            yourPick: SPOCK, housePick: LIZARD),
        GameRes.lose,
      );
    });
  });
}
