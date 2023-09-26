part of 'welcome_bloc.dart';

@immutable
sealed class WelcomeEvent extends Equatable {
  const WelcomeEvent();

  @override
  List<Object> get props => [];
}

class WelcomePageChanged extends WelcomeEvent {
  final int index;

  const WelcomePageChanged({required this.index});

  @override
  List<Object> get props => [index];
}
