import 'package:flutter/material.dart';
import 'package:note/core/assets_value_manager.dart';
import 'package:note/core/color_manager.dart';
import 'package:note/core/font_manager.dart';
import 'package:note/core/heigth_manager.dart';
import 'package:note/core/paddign_manager.dart';
import 'package:note/core/radius_manager.dart';
import 'package:note/core/width_manager.dart';

import '../../../../core/utils.dart';

class DesignOfSquaresNotes extends StatelessWidget {
  const DesignOfSquaresNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightManager.h120,
      width: WidthManagers.w150,
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(RadiusValuesManager.r10),
      ),
      child: Padding(
        padding: EdgeInsets.all(PaddingManager.p11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Image.asset(AssetsValuesManager.largeLayer),
                    Container(
                      height: HeightManager.h40,
                      width: WidthManagers.w40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetsValuesManager.circleLayer),
                          fit: BoxFit.cover,
                        ),

                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(
                          RadiusValuesManager.r50,
                        ),
                        border: Border.all(
                          color: ColorManager.lightGreen,
                          width: 2,
                        ),
                      ),
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        color: ColorManager.white,
                        fontFamily: FontsManagers.otamaFont,
                        fontSize: FontSizeManagers.f20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ///////////////////////////////////////
                Column(
                  children: [
                    Container(
                      height: HeightManager.h30,
                      width: WidthManagers.w75,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          RadiusValuesManager.r10,
                        ),
                        color: ColorManager.lightGreen,
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: PaddingManager.p5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Utils.done,
                              style: TextStyle(
                                color: ColorManager.white,
                                fontFamily: FontsManagers.otamaFont,
                                fontSize: FontSizeManagers.f16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.check_circle_outline_rounded),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: HeightManager.h15),
                    Text(
                      Utils.date,
                      style: TextStyle(
                        color: ColorManager.grey,
                        fontSize: FontSizeManagers.f10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: HeightManager.h10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Utils.numberTitle,
                  style: TextStyle(
                    color: ColorManager.white,
                    fontSize: FontSizeManagers.f18,
                    fontFamily: FontsManagers.otamaFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: HeightManager.h4),
                Text(
                  Utils.descriptionNote,
                  style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: FontSizeManagers.f8,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
