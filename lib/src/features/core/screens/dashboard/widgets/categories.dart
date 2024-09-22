import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../models/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context,index)=>
          GestureDetector(
            onTap: list[index].onPress,
            child: SizedBox(
              width: 170,
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tDarkColor
                    ),
                    child: Center(
                      child: Text(
                        list[index].title,
                        style: textTheme.headlineSmall?.apply(
                            color: Colors.white,
                            fontSizeFactor: 0.8,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          list[index].heading,
                          style: textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          list[index].subHeading,
                          style: textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor
        //           ),
        //           child: Center(
        //             child: Text(
        //               'JS',
        //               style: textTheme.headlineSmall?.apply(
        //                   color: Colors.white
        //               ),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 "Javascripts",
        //                 style: textTheme.bodyLarge,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text(
        //                 "10 lessons",
        //                 style: textTheme.bodyMedium,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor
        //           ),
        //           child: Center(
        //             child: Text(
        //               'JS',
        //               style: textTheme.headlineSmall?.apply(
        //                   color: Colors.white
        //               ),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 "Javascripts",
        //                 style: textTheme.bodyLarge,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text(
        //                 "10 lessons",
        //                 style: textTheme.bodyMedium,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor
        //           ),
        //           child: Center(
        //             child: Text(
        //               'JS',
        //               style: textTheme.headlineSmall?.apply(
        //                   color: Colors.white
        //               ),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 "Javascripts",
        //                 style: textTheme.bodyLarge,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text(
        //                 "10 lessons",
        //                 style: textTheme.bodyMedium,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}