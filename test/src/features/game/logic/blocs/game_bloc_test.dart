import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rock_paper_scissors/src/features/game/data/data.dart';
import 'package:rock_paper_scissors/src/features/game/logic/blocs/blocs.dart';
import 'package:rock_paper_scissors/src/features/game/logic/services/services.dart';

void main() {
  late GameService mockService;
  late GameBloc gameBloc;

  setUp(() {
    mockService = GameService();
    gameBloc = GameBloc(service: mockService);
  });

  tearDown(() {
    gameBloc.close();
  });

  group('GameBloc', () {
    blocTest<GameBloc, GameState>(
      'emits updated isBonusGame when SwitchGameType is added',
      build: () => gameBloc,
      act: (bloc) => bloc.add(SwitchGameType()),
      expect: () => [
        GameState(isBonusGame: true),
      ],
    );

    blocTest<GameBloc, GameState>(
      'emits updated picks when YourPickEvent is added',
      build: () => gameBloc,
      act: (bloc) => bloc.add(YourPickEvent(yourPick: ROCK)),
      expect: () => [
        isA<GameState>().having(
          (state) => state.yourPick,
          'yourPick',
          contains(nameToPath(ROCK)),
        ),
        isA<GameState>()
            .having((state) => state.playedRound, 'playedRound', true),
      ],
    );

    blocTest<GameBloc, GameState>(
      'emits updated result when DetermineGameResultEvent is added',
      build: () => gameBloc,
      seed: () => GameState(
        yourPick: nameToPath(ROCK),
        housePick: nameToPath(SCISSORS),
        isBonusGame: false,
      ),
      act: (bloc) => bloc.add(DetermineGameResultEvent()),
      expect: () => [
        isA<GameState>().having(
          (state) => state.result,
          'result',
          GameRes.win,
        ),
        isA<GameState>().having((state) => state.score, 'score', 1),
      ],
    );

    blocTest<GameBloc, GameState>(
      'resets state when PlayAgainEvent is added',
      build: () => gameBloc,
      act: (bloc) => bloc.add(PlayAgainEvent()),
      expect: () => [
        GameState(
          playedRound: false,
          yourPick: '',
          housePick: '',
        ),
      ],
    );
  });
}
