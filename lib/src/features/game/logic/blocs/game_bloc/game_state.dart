import 'package:equatable/equatable.dart';
import 'package:rock_paper_scissors/src/features/game/data/data.dart';

class GameState extends Equatable {
  final int score;
  final String yourPick;
  final String housePick;
  final bool playedRound;
  final GameRes result;

  const GameState({
    this.score = 0,
    this.yourPick = '',
    this.housePick = '',
    this.playedRound = false,
    this.result = GameRes.def,
  });

  @override
  List<Object> get props => [score, yourPick, housePick, playedRound, result];

  GameState copyWith({
    int? score,
    String? yourPick,
    String? housePick,
    bool? playedRound,
    GameRes? result,
  }) {
    return GameState(
      score: score ?? this.score,
      yourPick: yourPick ?? this.yourPick,
      housePick: housePick ?? this.housePick,
      playedRound: playedRound ?? this.playedRound,
      result: result ?? this.result,
    );
  }

  @override
  bool get stringify => true;
}
