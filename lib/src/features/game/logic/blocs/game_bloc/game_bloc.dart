import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/src/features/game/data/constants/constants.dart';
import 'package:rock_paper_scissors/src/features/game/logic/services/services.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';
import 'game_event.dart';
import 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameService service;
  GameBloc({required this.service}) : super(GameState()) {
    on<YourPickEvent>((event, emit) {
      emit(
        state.copyWith(
          yourPick: event.yourPick,
          housePick: selectRandomString(GAME_OPTIONS),
        ),
      );
    });

    on<DetermineGameResultEvent>((event, emit) {
      emit(
        state.copyWith(
          result: service.determineGameResult(
            yourPick: state.yourPick,
            housePick: state.housePick,
          ),
        ),
      );
    });

    on<PlayAgainEvent>((event, emit) {
      emit(
        state.copyWith(playedRound: false),
      );
    });
  }
}
