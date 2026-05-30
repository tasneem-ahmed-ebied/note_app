import 'package:flutter/material.dart';
import 'package:note/core/color_manager.dart';
import 'package:note/core/heigth_manager.dart';
import 'package:note/core/navigation/app_navigation.dart';
import 'package:note/core/paddign_manager.dart';
import 'package:note/core/route_manager.dart';
import 'package:note/view/screens/home_page/widgets/main_circle_button.dart';
import '../../splash_page/widgets/empty_notes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: PaddingManager.p60,
          left: PaddingManager.p300,
        ),
        child: InkWell(
          onTap: () {
            AppNavigation.pushNamed(context, RouteName.notePage);
          },
          child: MainCircleButton(icon: Icons.add),
        ),
      ),
      backgroundColor: ColorManager.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: HeightManager.h60),
            EmptyNotes(),
          ],
        ),
      ),
    );
  }
}
