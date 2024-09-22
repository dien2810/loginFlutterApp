import 'package:get/get.dart';

import '../../features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;
  var count = 0.obs;
  Future startSplashAnimation() async{ //Animate in
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.offAll(()=>const WelcomeScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
    //   return const WelcomeScreen();
    // }));
  }
  Future startAnimation() async{ //Animate out
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }

}