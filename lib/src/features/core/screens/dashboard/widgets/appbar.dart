import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/core/screens/profile/profile_screen.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashBoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
          Icons.menu,
          color: Colors.black
      ),
      title: Text(
          tAppName,
          style: Theme.of(context).textTheme.headlineMedium
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(top: 7.0, right: 20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: tCardBgColor
          ),
          child: IconButton(
            onPressed: (){
              //AuthenticationRepository.instance.logOut();
              Get.to(()=>const ProfileScreen());
            },
            icon: const Image(
              image: AssetImage(tUserProfileImage),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
