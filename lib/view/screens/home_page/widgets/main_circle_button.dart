import 'package:flutter/material.dart';

import '../../../../core/color_manager.dart';
import '../../../../core/font_manager.dart';
import '../../../../core/navigation/app_navigation.dart';
import '../../../../core/radius_manager.dart';
import '../../../../core/route_manager.dart';

class MainCircleButton extends StatelessWidget {
  const MainCircleButton({
    super.key, required this.icon, required this.onTap,
  });
final IconData icon;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: RadiusValuesManager.r30,
      backgroundColor: ColorManager.primary,
      child: InkWell(
        onTap: onTap,
        child: Icon(icon, size: FontSizeManagers.f25,color: ColorManager.white,),
      ),
    );
  }
}
