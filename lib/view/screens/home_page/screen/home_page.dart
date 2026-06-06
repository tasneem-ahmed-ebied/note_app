import 'package:flutter/material.dart';
import 'package:note/core/color_manager.dart';
import 'package:note/core/heigth_manager.dart';
import 'package:note/core/navigation/app_navigation.dart';
import 'package:note/core/paddign_manager.dart';
import 'package:note/core/route_manager.dart';
import 'package:note/core/utils.dart';
import 'package:note/view/screens/home_page/widgets/design_of_squares_notes.dart';
import 'package:note/view/screens/home_page/widgets/main_circle_button.dart';
import '../../splash_page/widgets/empty_notes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Utils.notes),
        centerTitle: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          right: PaddingManager.p20,
          bottom: PaddingManager.p60,
          // left: PaddingManager.p300,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainCircleButton(
              icon: Icons.add,
              onTap: () {
                AppNavigation.pushNamed(context, RouteName.notePage);
              },
            ),
          ],
        ),
      ),
      backgroundColor: ColorManager.white,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p24,
          ),
          child: Column(
            children: [
              SizedBox(height: HeightManager.h60),

              //todo! empty note widget
              EmptyNotes(),
              //todo! full note widget
              // Expanded(
              //   child: GridView.builder(
              //     itemCount: 4,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 9,
              //       mainAxisSpacing: 10,
              //     ),
              //     itemBuilder: (context, index) {
              //       return DesignOfSquaresNotes();
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
