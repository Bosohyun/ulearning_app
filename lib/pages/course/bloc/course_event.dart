part of 'course_bloc.dart';

sealed class CourseEvent extends Equatable {
  const CourseEvent();

  @override
  List<Object> get props => [];
}

class TriggerCourse extends CourseEvent {
  final CourseItem courseItem;
  const TriggerCourse({required this.courseItem});
}
