import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;
  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subtitle: tOnBoardingSubtitle1,
          counterText: tOnBoardingCounter1,
          bgColor: tOnBoardingPage1Color,
        )
    ),
    OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingTitle2,
          subtitle: tOnBoardingSubtitle2,
          counterText: tOnBoardingCounter2,
          bgColor: tOnBoardingPage2Color,
        )
    ),
    OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage3,
          title: tOnBoardingTitle3,
          subtitle: tOnBoardingSubtitle3,
          counterText: tOnBoardingCounter3,
          bgColor: tOnBoardingPage3Color,
        )
    ),
  ];

  onPageChangeCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
  animateToNextSlide()=>controller.animateToPage(page: controller.currentPage+1);
  skip()=>controller.jumpToPage(page:2);
}