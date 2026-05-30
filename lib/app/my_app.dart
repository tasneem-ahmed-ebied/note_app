import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: (Size(393,906)),
      child: MaterialApp(
        onGenerateRoute: RoutesManager.onGenerateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: RouteName.splachPage.routeName,

      ),
    );
  }
}
