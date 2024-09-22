import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({required this.model, super.key});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.all(tDefaultSize),
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(model.image),
              height: size.height*0.4,
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  model.subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17
                  )
                ),
              ],
            ),
            Text(
                model.counterText,
                style: Theme.of(context).textTheme.headlineLarge
            ),
            const SizedBox(height: 50.0,)
          ],
        )
    );
  }
}