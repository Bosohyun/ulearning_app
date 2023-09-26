part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class TriggerAppEvent extends AppEvent {
  final int index;

  const TriggerAppEvent({
    required this.index,
  });

  @override
  List<Object> get props => [index];

  @override
  String toString() => 'TriggerAppEvent(index: $index)';
}
