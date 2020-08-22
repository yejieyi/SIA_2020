import 'package:best_flutter_ui_templates/design_course/home_design_course.dart';
import 'package:best_flutter_ui_templates/fitness_app/fitness_app_home_screen.dart';
import 'package:best_flutter_ui_templates/heatmap/hotel_home_screen.dart';
import 'package:best_flutter_ui_templates/meetingroom/hotel_home_screen.dart';
import 'package:best_flutter_ui_templates/nurse/hotel_home_screen.dart';
// import 'package:best_flutter_ui_templates/meetingroom/hotel_home_screen.dart';
import 'package:best_flutter_ui_templates/restroom/hotel_home_screen.dart';
import 'package:best_flutter_ui_templates/showers/hotel_home_screen.dart';
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
      imagePath: 'Meeting Room',
      navigateScreen: HotelHomeScreen(),
      color: 50,
    ),
    HomeList(
      imagePath: 'Nursing Room',
      navigateScreen: nurseScreen(),
      color: 100,
    ),
    HomeList(
      imagePath: 'Restrooms',
      navigateScreen: restroomScreen(),
      color: 200,
    ),
    HomeList(
      imagePath: 'Showers',
      navigateScreen: showersScreen(),
      color: 300,
    ),
    HomeList(
      imagePath: 'Heatmap',
      navigateScreen: heatmapScreen(),
      color: 300,
    ),
  ];
}
