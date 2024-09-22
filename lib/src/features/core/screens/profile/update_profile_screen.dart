import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left_solid)),
        title: Text(tEditProfile,
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(tProfileImage),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: tPrimaryColor
                          ),
                          child: const Icon(
                            LineAwesomeIcons.camera_solid,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(tFullName),
                            prefixIcon: Icon(LineAwesomeIcons.user)
                          ),
                        ),
                        const SizedBox(height: tFormHeight-20),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(tEmail),
                            prefixIcon: Icon(LineAwesomeIcons.envelope)
                          ),
                        ),
                        const SizedBox(height: tFormHeight-20),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(tPhoneNo),
                            prefixIcon: Icon(LineAwesomeIcons.phone_solid)
                          ),
                        ),
                        const SizedBox(height: tFormHeight-20),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(tPassword),
                            prefixIcon: Icon(LineAwesomeIcons.fingerprint_solid)
                          ),
                        ),
                        const SizedBox(height: tFormHeight),
                        //Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: tPrimaryColor,
                                side: BorderSide.none,
                                shape: const StadiumBorder()
                            ),
                            child: const Text(
                                tEditProfile
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text.rich(
                              TextSpan(
                                text: tJoined,
                                style: TextStyle(fontSize: 12),
                                children: [
                                  TextSpan(
                                    text: tJoinedAt,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12
                                    )
                                  )
                                ]
                              )
                            ),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent.withOpacity(0.1),
                                foregroundColor: Colors.red,
                                elevation: 0,
                                shape: const StadiumBorder(),
                                side: BorderSide.none
                              ),
                              child: const Text(
                                  tEditProfile
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]
              )
          )
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: tAccentColor.withOpacity(0.1)),
        child: Icon(
          icon,
          color: tAccentColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1)),
              child: const Icon(
                LineAwesomeIcons.angle_right_solid,
                size: 18.0,
                color: Colors.grey,
              ),
            )
          : null,
    );
  }
}
