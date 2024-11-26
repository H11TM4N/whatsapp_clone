import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/src/features/game/data/data.dart';
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
          yourPick: nameToPath(event.yourPick),
          housePick: nameToPath(selectRandomString(GAME_OPTIONS)),
          playedRound: true,
        ),
      );
      add(DetermineGameResultEvent());
      log(state.toString());
    });

    on<DetermineGameResultEvent>((event, emit) {
      emit(
        state.copyWith(
          result: service.determineGameResult(
            yourPick: pathToName(state.yourPick) ?? '__',
            housePick: pathToName(state.housePick) ?? '__',
          ),
          score: state.result == GameRes.win ? (state.score + 1) : null,
        ),
      );
      log(state.toString());
    });

    on<PlayAgainEvent>((event, emit) {
      emit(
        state.copyWith(
          playedRound: false,
          housePick: '',
          yourPick: '',
        ),
      );
      log(state.toString());
    });
  }
}
