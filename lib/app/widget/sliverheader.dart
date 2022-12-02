

import 'package:assesment/app/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Delegate extends SliverPersistentHeaderDelegate {
  // final Color backgroundColor;
  final String title;

  Delegate(this.title);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: maxExtent,
      color: kcSecondary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleSwitch(
              curve: Curves.easeIn,
              customWidths: const [100, 140],
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              radiusStyle: true,
              activeFgColor: Colors.white,
              inactiveBgColor: kcLightGreyColor,
              inactiveFgColor: Colors.black,
              totalSwitches: 2,
              labels: const ['Bot Mode', 'Application Mode'],
              //icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
              activeBgColors: const [
                [kcPrimary],
                [kcPrimary]
              ],
              onToggle: (index) {
               // print('switched to: $index');
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
