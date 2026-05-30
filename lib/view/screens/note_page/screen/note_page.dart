import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/core/color_manager.dart';
import 'package:note/core/font_manager.dart';
import 'package:note/core/heigth_manager.dart';
import 'package:note/core/paddign_manager.dart';
import 'package:note/core/utils.dart';

import '../widgets/back_and_submit_row.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: PaddingManager.p20,
          vertical: PaddingManager.p50,
        ),
        child: Column(
          children: [
            BackAndSubmitRow(),
            TextField(
              style: TextStyle(
                fontSize: FontSizeManagers.f45,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: Utils.title,
                hintStyle: TextStyle(fontSize: FontSizeManagers.f45, color: ColorManager.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,

              ),

            ),
            SizedBox(height: HeightManager.h20,),
            Expanded(
              child: TextField(
                maxLines: null,
                minLines: null,
                expands: true,
                style: TextStyle(
                  fontSize: FontSizeManagers.f30,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: Utils.typeSomeThing,
                  hintStyle: TextStyle(fontSize: FontSizeManagers.f20, color: ColorManager.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,

                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
