import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/core/heigth_manager.dart';
import 'package:note/core/paddign_manager.dart';
import 'package:note/core/radius_manager.dart';
import 'package:note/core/width_manager.dart';

import '../../../../core/color_manager.dart';
import '../../../../core/font_manager.dart';
import '../../../../core/utils.dart';

class BackAndSubmitRow extends StatelessWidget {
  const BackAndSubmitRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: ColorManager.primary,
            size: FontSizeManagers.f30,
          ),
        ),
        ////////////////////////////////////
        InkWell(
          onTap: () {
            // show model button sheet
            showModalBottomSheet(
              isScrollControlled:  true,
              // useSafeArea: true,
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: HorizontalPaddingManager.p24,),
                  child: Container(
                    height: HeightManager.h216,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(
                        RadiusValuesManager.r20,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(vertical: VerticalPaddingManager.p15),
                      child: Column(
                        children: [
                          Text(Utils.shouldAddTitleAndDes,style: TextStyle(color: ColorManager.black,fontWeight: FontWeight.bold,fontSize: FontSizeManagers.f24,),),
                          SizedBox(height: HeightManager.h6,),
                          Text(Utils.toSave,style: TextStyle(color: ColorManager.grey),),
                          SizedBox(height: HeightManager.h8,),
                          Divider(color: ColorManager.lightGrey,height: HeightManager.h1,),
                          SizedBox(height: HeightManager.h15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(children: [
                                Icon(CupertinoIcons.checkmark_alt_circle,color: ColorManager.purple,size: FontSizeManagers.f25,),
                                SizedBox(height: HeightManager.h4,),
                                Text(Utils.ok,style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f15),)
                              ],),
                              Column(children: [
                                Icon(CupertinoIcons.delete,color: ColorManager.red,size: FontSizeManagers.f25,),
                                SizedBox(height: HeightManager.h4,),
                                Text(Utils.delete,style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f15),)
                              ],),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: HeightManager.h55,
            width: WidthManagers.w55,
            decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
            ),
            child: Icon(
              Icons.check_circle_outline_rounded,
              color: ColorManager.white,
              size: FontSizeManagers.f25,
            ),
          ),
        ),
      ],
    );
  }
}
