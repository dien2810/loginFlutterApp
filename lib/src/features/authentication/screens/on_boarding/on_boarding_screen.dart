import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final OnBoardingController onBoardingController = OnBoardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onBoardingController.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: onBoardingController.controller,
            onPageChangeCallback: onBoardingController.onPageChangeCallBack,
          ),
          Positioned(
            bottom: 80.0,
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20)
              ),
              onPressed: ()=>onBoardingController.animateToNextSlide(),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: tDarkColor,
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios)
              ),
            )
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: ()=>onBoardingController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey))
            )
          ),
          Obx(
            () => Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                activeIndex: onBoardingController.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}


