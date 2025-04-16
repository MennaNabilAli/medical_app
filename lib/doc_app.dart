import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app_advv/core/routing/app_router.dart';
import 'package:medical_app_advv/core/routing/routes.dart';
import 'package:medical_app_advv/core/theming/colors.dart';


class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375,812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
