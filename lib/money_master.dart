import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_master/core/constants/theme/theme.dart';
import 'package:money_master/core/routes/routes.dart';

class MoneyMaster extends StatelessWidget {
  const MoneyMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.darkTheme,
            initialRoute: Routes.onboarding,
            routes: Routes.getRoutes(),
          );
        });
  }
}
