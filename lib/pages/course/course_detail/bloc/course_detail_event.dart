part of 'course_detail_bloc.dart';

sealed class CourseDetailEvent extends Equatable {
  const CourseDetailEvent();

  @override
  List<Object> get props => [];
}

class TriggerCourseDetail extends CourseDetailEvent {
  final CourseItem courseItem;
  const TriggerCourseDetail({required this.courseItem});
}

class TriggerLessonList extends CourseDetailEvent {
  final List<LessonItem> lessonItem;
  const TriggerLessonList({required this.lessonItem});
}
