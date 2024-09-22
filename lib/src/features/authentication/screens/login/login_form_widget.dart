import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_modal_bottom_sheet.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: tFormHeight-10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint),
                    labelText: tPassword,
                    hintText: tPassword,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.remove_red_eye_sharp),
                    )
                ),
              ),
              const SizedBox(height: tFormHeight-10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: const Text(tForgetPassword)
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(()=>const Dashboard());
                  },
                  child: Text(tLogin.toUpperCase()),
                ),
              )
            ],
          ),
        )
    );
  }
}
