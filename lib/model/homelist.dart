import 'package:best_flutter_ui_templates/design_course/home_design_course.dart';
import 'package:best_flutter_ui_templates/fitness_app/fitness_app_home_screen.dart';
import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
    this.color = 200,
  });

  Widget navigateScreen;
  String imagePath;
  int color;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'Restroom',
      navigateScreen: HotelHomeScreen(),
      color: 50,
    ),
    HomeList(
      imagePath: 'Nursing Room',
      navigateScreen: FitnessAppHomeScreen(),
      color: 100,
    ),
    HomeList(
      imagePath: 'Meeting Room',
      navigateScreen: HotelHomeScreen(),
      color: 200,
    ),
    HomeList(
      imagePath: 'Others',
      navigateScreen: DesignCourseHomeScreen(),
      color: 300,
    ),
  ];
}
