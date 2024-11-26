import 'package:equatable/equatable.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

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
