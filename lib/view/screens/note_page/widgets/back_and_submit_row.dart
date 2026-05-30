import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/core/navigation/app_navigation.dart';
import 'package:note/core/route_manager.dart';

import '../../../../core/color_manager.dart';
import '../../../../core/font_manager.dart';

class BackAndSubmitRow extends StatelessWidget {
  const BackAndSubmitRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              AppNavigation.pushNamed(context, RouteName.homePage);
            },
            child: Icon(CupertinoIcons.back,color: ColorManager.primary,size: FontSizeManagers.f30,)),
        InkWell(
          onTap: () {
            AppNavigation.pushNamed(context, RouteName.homePage);
          },
            child: Icon(Icons.check_circle_outline_sharp,color: ColorManager.primary,size: FontSizeManagers.f40,))
      ],
    );
  }
}
