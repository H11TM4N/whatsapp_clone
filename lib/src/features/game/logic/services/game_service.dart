import 'package:rock_paper_scissors/src/features/game/data/data.dart';

class GameService {
  GameRes determineGameResult({
    required String yourPick,
    required String housePick,
  }) {
    if (yourPick == housePick) {
      return GameRes.draw;
    }

    if ((yourPick == ROCK && housePick == SCISSORS) ||
        (yourPick == PAPER && housePick == ROCK) ||
        (yourPick == SCISSORS && housePick == PAPER)) {
      return GameRes.win;
    }

    return GameRes.lose;
  }

  GameRes determineBonusGameResult({
    required String yourPick,
    required String housePick,
  }) {
    if (yourPick == housePick) {
      return GameRes.draw;
    }

    if ((yourPick == ROCK && (housePick == SCISSORS || housePick == LIZARD)) ||
        (yourPick == PAPER && (housePick == ROCK || housePick == SPOCK)) ||
        (yourPick == SCISSORS && (housePick == PAPER || housePick == LIZARD)) ||
        (yourPick == LIZARD && (housePick == SPOCK || housePick == PAPER)) ||
        (yourPick == SPOCK && (housePick == SCISSORS || housePick == ROCK))) {
      return GameRes.win;
    }

    return GameRes.lose;
  }
}
