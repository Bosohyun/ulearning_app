part of 'home_page_bloc.dart';

sealed class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object> get props => [];
}

class HomePageDots extends HomePageEvent {
  final int index;
  const HomePageDots({required this.index});
}

class HomePageCourseItem extends HomePageEvent {
  final List<CourseItem> courseItem;
  const HomePageCourseItem({required this.courseItem});
}
