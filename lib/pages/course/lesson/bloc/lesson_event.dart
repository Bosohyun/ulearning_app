part of 'lesson_bloc.dart';

sealed class LessonEvent extends Equatable {
  const LessonEvent();

  @override
  List<Object> get props => [];
}

class TriggerLessonVideo extends LessonEvent {
  final List<LessonVideoItem> lessonVideoItem;
  const TriggerLessonVideo({required this.lessonVideoItem});
}

class TriggerUrlItem extends LessonEvent {
  final Future<void>? initVideoPlayerFuture;
  const TriggerUrlItem(this.initVideoPlayerFuture);
}

class TriggerPlay extends LessonEvent {
  final bool isPlay;
  const TriggerPlay({required this.isPlay});
}
