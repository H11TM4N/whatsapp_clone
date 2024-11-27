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
    on<SwitchGameType>(_onSwitchGameType);
    on<YourPickEvent>(_onPick);
    on<DetermineGameResultEvent>(_onDetermineGameResult);
    on<PlayAgainEvent>(_onPlayAgain);
  }

  void _onSwitchGameType(SwitchGameType event, Emitter<GameState> emit) async {
    emit(state.copyWith(
      isBonusGame: !state.isBonusGame,
    ));
    log(state.toString());
  }

  void _onPick(YourPickEvent event, Emitter<GameState> emit) async {
    emit(
      state.copyWith(
        yourPick: nameToPath(event.yourPick),
        housePick: nameToPath(
          selectRandomString(
            state.isBonusGame ? BONUS_GAME_OPTIONS : GAME_OPTIONS,
          ),
        ),
        playedRound: true,
      ),
    );
    add(DetermineGameResultEvent());
    log(state.toString());
  }

  void _onDetermineGameResult(
      DetermineGameResultEvent event, Emitter<GameState> emit) async {
    emit(
      state.copyWith(
        result: state.isBonusGame
            ? service.determineBonusGameResult(
                yourPick: pathToName(state.yourPick),
                housePick: pathToName(state.housePick),
              )
            : service.determineGameResult(
                yourPick: pathToName(state.yourPick),
                housePick: pathToName(state.housePick),
              ),
      ),
    );
    emit(
      state.copyWith(
        score: state.result == GameRes.win ? (state.score + 1) : null,
      ),
    );
    log(state.toString());
  }

  void _onPlayAgain(PlayAgainEvent event, Emitter<GameState> emit) async {
    emit(
      state.copyWith(
        playedRound: false,
        housePick: '',
        yourPick: '',
      ),
    );
    log(state.toString());
  }
}
