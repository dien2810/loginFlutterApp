import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(tWelcomeScreenImage),
          height: size.height*0.2,
        ),
        Text(
            tLoginTitle,
            style: Theme.of(context).textTheme.headlineLarge
        ),
        Text(
            tLoginSubTitle,
            style: Theme.of(context).textTheme.bodyLarge
        ),
      ],
    );
  }
}