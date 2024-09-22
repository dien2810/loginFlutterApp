import 'package:flutter/cupertino.dart';

class DashboardCategoriesModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;
  DashboardCategoriesModel(
      this.title,
      this.heading,
      this.subHeading,
      this.onPress
  );
  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("JS", "Javascript", "10 lessons", (){}),
    DashboardCategoriesModel("F", "Flutter", "8 lessons", (){}),
    DashboardCategoriesModel("HTML", "HTML", "10 lessons", (){}),
    DashboardCategoriesModel("Java", "Java", "9 lessons", (){}),
  ];
}