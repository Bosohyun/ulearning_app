part of 'lesson_bloc.dart';

class LessonState extends Equatable {
  final List<LessonVideoItem> lessonVideoItem;
  final Future<void>? initializeVideoPlayerFuture;
  final bool isPlay;

  const LessonState({
    required this.lessonVideoItem,
    required this.isPlay,
    this.initializeVideoPlayerFuture,
  });

  factory LessonState.initial() => const LessonState(
        lessonVideoItem: <LessonVideoItem>[],
        isPlay: false,
      );

  @override
  List<Object?> get props => [
        lessonVideoItem,
        initializeVideoPlayerFuture,
        isPlay,
      ];

  @override
  String toString() =>
      'LessonState { lessonVideoItem: $lessonVideoItem, initializeVideoPlayerFuture: $initializeVideoPlayerFuture, isPlay: $isPlay }';

  LessonState copyWith({
    List<LessonVideoItem>? lessonVideoItem,
    Future<void>? initializeVideoPlayerFuture,
    bool? isPlay,
  }) {
    return LessonState(
      lessonVideoItem: lessonVideoItem ?? this.lessonVideoItem,
      initializeVideoPlayerFuture:
          initializeVideoPlayerFuture ?? this.initializeVideoPlayerFuture,
      isPlay: isPlay ?? this.isPlay,
    );
  }
}
