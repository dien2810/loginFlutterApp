import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  //Call this Function from design and it will do the rest when click Submit
  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(
      email, password);
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

}