import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight-10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
                width: 20.0,
                image: AssetImage(tGoogleLogoImage)
            ),
            onPressed: (){},
            label: const Text(tSignInWithGoogle),
          ),
        ),
        TextButton(
          onPressed: (){},
          child: Text.rich(
              TextSpan(
                  text: tDontHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                        text: tSignup,
                        style: TextStyle(
                            color: Colors.blue
                        )
                    )
                  ]
              )
          ),
        )
      ],
    );
  }
}