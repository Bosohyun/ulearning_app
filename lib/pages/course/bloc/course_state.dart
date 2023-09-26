part of 'course_bloc.dart';

class CourseState extends Equatable {
  final CourseItem? courseItem;

  const CourseState({
    this.courseItem,
  });

  factory CourseState.initial() => const CourseState();

  @override
  List<Object?> get props => [courseItem];

  @override
  String toString() => 'CourseState(courseItem: $courseItem)';

  CourseState copyWith({
    //optional named parameter
    CourseItem? courseItem,
  }) {
    return CourseState(
      courseItem: courseItem ?? this.courseItem,
    );
  }
}
