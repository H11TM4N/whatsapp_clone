import 'package:equatable/equatable.dart';
import 'package:rock_paper_scissors/src/features/game/data/data.dart';

class GameState extends Equatable {
  final int score;
  final String yourPick;
  final String housePick;
  final bool playedRound;
  final GameRes result;
  final bool isBonusGame;

  const GameState({
    this.score = 0,
    this.yourPick = '',
    this.housePick = '',
    this.playedRound = false,
    this.result = GameRes.def,
    this.isBonusGame = false,
  });

  @override
  List<Object> get props => [score, yourPick, housePick, playedRound, isBonusGame, result];

  GameState copyWith({
    int? score,
    String? yourPick,
    String? housePick,
    bool? playedRound,
    GameRes? result,
    bool? isBonusGame,
  }) {
    return GameState(
      score: score ?? this.score,
      yourPick: yourPick ?? this.yourPick,
      housePick: housePick ?? this.housePick,
      playedRound: playedRound ?? this.playedRound,
      result: result ?? this.result,
      isBonusGame: isBonusGame ?? this.isBonusGame,
    );
  }

  @override
  bool get stringify => true;
}
