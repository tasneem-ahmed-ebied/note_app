import 'package:flutter/material.dart';

import '../../../../core/assets_value_manager.dart';
import '../../../../core/color_manager.dart';
import '../../../../core/font_manager.dart';
import '../../../../core/heigth_manager.dart';
import '../../../../core/utils.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsValuesManager.splachPageImage),
        SizedBox(height: HeightManager.h15),
        Text(
          Utils.createYourFirstNote,
          style: TextStyle(
            color: ColorManager.black,
            fontSize: FontSizeManagers.f16,
            fontFamily: FontsManagers.otamaFont,
          ),
        ),
      ],
    );
  }
}
