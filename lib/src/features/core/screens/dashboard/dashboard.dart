import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashBoardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tDashboardTitle,
                style: textTheme.bodyLarge,
              ),
              Text(
                tDashboardHeading,
                style: textTheme.headlineLarge,
              ),
              const SizedBox(height: tDashboardPadding),
              //Search box
              DashboardSearchBox(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),
              //Categories
              DashboardCategories(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),
              //Banners
              DashboardBanners(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),
              Text(
                tDashboardTopCourses,
                style: textTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
              ),
              //Top Courses
              DashboardTopCourses(textTheme: textTheme)
            ],
          ),
        ),
      ),
    );
  }
}








