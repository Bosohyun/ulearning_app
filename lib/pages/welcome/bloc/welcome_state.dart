part of 'welcome_bloc.dart';

class WelcomeState extends Equatable {
  final int page;

  const WelcomeState({required this.page});

  factory WelcomeState.initial() => const WelcomeState(page: 0);

  @override
  List<Object> get props => [page];

  @override
  String toString() => 'WelcomeState(page: $page)';

  WelcomeState copyWith({
    int? page,
  }) {
    return WelcomeState(
      page: page ?? this.page,
    );
  }
}
