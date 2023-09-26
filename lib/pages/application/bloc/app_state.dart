part of 'app_bloc.dart';

class AppState extends Equatable {
  final int index;

  const AppState({
    required this.index,
  });

  factory AppState.initial() => const AppState(index: 0);

  @override
  List<Object> get props => [index];

  @override
  String toString() => 'AppState(index: $index)';

  AppState copyWith({
    //optional named parameter
    int? index,
  }) {
    return AppState(
      index: index ?? this.index,
    );
  }
}
