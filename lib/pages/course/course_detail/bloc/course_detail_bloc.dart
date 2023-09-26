import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ulearning_app/common/entities/course.dart';
import 'package:ulearning_app/common/entities/lesson.dart';

part 'course_detail_event.dart';
part 'course_detail_state.dart';

class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  CourseDetailBloc() : super(CourseDetailState.initial()) {
    on<TriggerCourseDetail>(_triggerCourseDetail);
    on<TriggerLessonList>(_triggerLessonList);
  }

  void _triggerCourseDetail(
      TriggerCourseDetail event, Emitter<CourseDetailState> emit) {
    emit(state.copyWith(courseItem: event.courseItem));
  }

  void _triggerLessonList(
      TriggerLessonList event, Emitter<CourseDetailState> emit) {
    emit(state.copyWith(lessonItem: event.lessonItem));
  }
}
