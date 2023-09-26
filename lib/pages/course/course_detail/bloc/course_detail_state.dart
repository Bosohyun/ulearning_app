part of 'course_detail_bloc.dart';

class CourseDetailState extends Equatable {
  final CourseItem? courseItem;
  final List<LessonItem>? lessonItem;
  const CourseDetailState({
    this.courseItem,
    this.lessonItem,
  });

  factory CourseDetailState.initial() => const CourseDetailState(
        lessonItem: <LessonItem>[],
      );

  @override
  List<Object?> get props => [courseItem, lessonItem];

  @override
  String toString() =>
      'CourseDetailState(courseItem: $courseItem, lessonItem: $lessonItem)';

  CourseDetailState copyWith({
    //optional named parameter
    CourseItem? courseItem,
    List<LessonItem>? lessonItem,
  }) {
    return CourseDetailState(
      courseItem: courseItem ?? this.courseItem,
      lessonItem: lessonItem ?? this.lessonItem,
    );
  }
}
