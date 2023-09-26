part of 'home_page_bloc.dart';

class HomePageState extends Equatable {
  final int index;
  final List<CourseItem> courseItem;

  const HomePageState({
    required this.index,
    required this.courseItem,
  });

  factory HomePageState.initial() => const HomePageState(
        index: 0,
        courseItem: <CourseItem>[],
      );

  @override
  List<Object> get props => [index, courseItem];

  @override
  String toString() => 'HomePageState(index: $index, courseItem: $courseItem)';

  HomePageState copyWith({
    //optional named parameter
    int? index,
    List<CourseItem>? courseItem,
  }) {
    return HomePageState(
      index: index ?? this.index,
      courseItem: courseItem ?? this.courseItem,
    );
  }
}
