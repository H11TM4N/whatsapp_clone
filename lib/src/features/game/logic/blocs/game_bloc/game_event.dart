import 'package:equatable/equatable.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

class SetGameType extends GameEvent {
  final bool isBonus;
  const SetGameType({
    required this.isBonus,
  });
  @override
  List<Object> get props => [isBonus];
}

class SwitchGameType extends GameEvent {}

class YourPickEvent extends GameEvent {
  final String yourPick;
  const YourPickEvent({
    required this.yourPick,
  });
  @override
  List<Object> get props => [yourPick];
}

class DetermineGameResultEvent extends GameEvent {}

class PlayAgainEvent extends GameEvent {}
