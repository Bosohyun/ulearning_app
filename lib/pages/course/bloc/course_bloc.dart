import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ulearning_app/common/entities/course.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc() : super(CourseState.initial()) {
    on<TriggerCourse>(_triggerCourse);
  }

  void _triggerCourse(TriggerCourse event, Emitter<CourseState> emit) {
    emit(state.copyWith(courseItem: event.courseItem));
  }
}
