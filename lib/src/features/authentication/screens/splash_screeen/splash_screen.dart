import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/text_strings.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimationPosition(
                topBefore: -30,
                topAfter: 0,
                leftBefore: -30,
                leftAfter: 0
              ),
              child: const Image(
                image: AssetImage(tSplashTopIcon),
              )
            ),
            TFadeInAnimation(
              durationInMs: 2000,
              animate: TAnimationPosition(
                topBefore: 80,
                topAfter: 80,
                leftBefore: -80,
                leftAfter: tDefaultSize
              ),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                       tAppName,
                       style: Theme.of(context).textTheme.headlineMedium
                   ),
                   Text(
                       tAppTagLine,
                       style: Theme.of(context).textTheme.headlineSmall
                   )
                 ],
              ),
            ),
            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimationPosition(
                bottomBefore: 0,
                bottomAfter: 100
              ),
              child: const Image(
                  image: AssetImage(tSplashImage),
                  width: 400,
                  height: 400
              )
            ),
            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimationPosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightBefore: tDefaultSize,
                rightAfter: tDefaultSize
              ),
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}


