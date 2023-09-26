import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ulearning_app/common/entities/lesson.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  LessonBloc() : super(LessonState.initial()) {
    on<TriggerLessonVideo>(_triggerLessonVideo);
    on<TriggerUrlItem>(_triggerUrlItem);
    on<TriggerPlay>(_triggerPlay);
  }

  void _triggerLessonVideo(
      TriggerLessonVideo event, Emitter<LessonState> emit) {
    emit(state.copyWith(
      lessonVideoItem: event.lessonVideoItem,
    ));
  }

  void _triggerUrlItem(TriggerUrlItem event, Emitter<LessonState> emit) {
    emit(state.copyWith(
      initializeVideoPlayerFuture: event.initVideoPlayerFuture,
    ));
  }

  void _triggerPlay(TriggerPlay event, Emitter<LessonState> emit) {
    emit(state.copyWith(
      isPlay: event.isPlay,
    ));
  }
}
