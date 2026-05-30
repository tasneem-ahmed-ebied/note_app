import 'package:flutter/material.dart';
import 'package:note/core/color_manager.dart';
import 'package:note/core/font_manager.dart';
import 'package:note/core/heigth_manager.dart';

import '../../../../core/assets_value_manager.dart';
import '../../../../core/utils.dart';
import '../../home_page/widgets/main_circle_button.dart';

class SplachPage extends StatelessWidget {
  const SplachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: HeightManager.h20),
            Image.asset(AssetsValuesManager.splachPageImage),
            SizedBox(height: HeightManager.h20),
            Text(
              textAlign: TextAlign.center,
              Utils.splachTitleText,
              style: TextStyle(
                color: ColorManager.black,
                fontFamily: FontsManagers.otamaFont,
                fontSize: FontSizeManagers.f40,
              ),
            ),
            SizedBox(height: HeightManager.h15),
            Text(
              textAlign: TextAlign.center,
              Utils.splachDescText,
              style: TextStyle(
                color: ColorManager.grey,
                fontFamily: FontsManagers.otamaFont,
                fontSize: FontSizeManagers.f15,
              ),
            ),
            SizedBox(height: HeightManager.h30),
            MainCircleButton(icon: Icons.navigate_next),
          ],
        ),
      ),
    );
  }
}
