import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/screens/profile/update_profile_screen.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(LineAwesomeIcons.angle_left_solid)
        ),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headlineMedium
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(isDark?LineAwesomeIcons.sun:LineAwesomeIcons.moon),
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
                            LineAwesomeIcons.pencil_alt_solid,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                      tProfileHeading,
                      style: Theme.of(context).textTheme.headlineMedium
                  ),
                  Text(
                    tProfileSubheading,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: ()=>Get.to(()=>const UpdateProfileScreen()),
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
                  const SizedBox(height: 30),
                  const Divider(),
                  const SizedBox(height: 10),
                  //MENU SECTION
                  ProfileMenuWidget(
                    title: tMenu1,
                    icon: LineAwesomeIcons.cog_solid,
                    onPress: (){},
                  ),
                  ProfileMenuWidget(
                    title: tMenu2,
                    icon: LineAwesomeIcons.wallet_solid,
                    onPress: (){},
                  ),
                  ProfileMenuWidget(
                    title: tMenu3,
                    icon: LineAwesomeIcons.user_check_solid,
                    onPress: (){},
                  ),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 10),
                  ProfileMenuWidget(
                    title: tMenu4,
                    icon: LineAwesomeIcons.info_solid,
                    onPress: (){},
                  ),
                  ProfileMenuWidget(
                      title: tMenu5,
                      icon: LineAwesomeIcons.sign_out_alt_solid,
                      onPress: (){},
                      textColor: Colors.red,
                      endIcon: false
                  ),
                ],
              )
          )
      ),
    );
  }
}
