import 'package:assesment/app/theme/appcolors.dart';
import 'package:assesment/app/theme/textstyle.dart';
import 'package:assesment/app/theme/whitespaces.dart';
import 'package:flutter/material.dart';

class Delegate2 extends SliverPersistentHeaderDelegate {
  // final Color backgroundColor;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: maxExtent,
      color: kcPrimary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: kcWhite,
                    ),
                    const Text('   Lead kanban', style: bodyStyle),
                    Row(
                      children: const [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 18,
                        ),
                        hSpaceSmall,
                        Icon(
                          Icons.filter_alt,
                          color: Colors.white,
                          size: 18,
                        ),
                        hSpaceSmall,
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
                vSpaceMin,
                const Text('You have 6 new leads on which action is required!',
                    style: captionStyle),
              ],
            )

            // ToggleSwitch(
            //   curve: Curves.easeIn,
            //   customWidths: [100, 140],
            //   initialLabelIndex: 1,
            //   cornerRadius: 20.0,
            //   radiusStyle: true,
            //   activeFgColor: Colors.white,
            //   inactiveBgColor: kcLightGreyColor,
            //   inactiveFgColor: Colors.black,
            //   totalSwitches: 2,
            //   labels: const ['Bot Mode', 'Application Mode'],
            //   //icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
            //   activeBgColors: const [
            //     [kcPrimary],
            //     [kcPrimary]
            //   ],
            //   onToggle: (index) {
            //     print('switched to: $index');
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
