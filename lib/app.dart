import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/src/splash/splash.dart';
import 'core/navigation/app_navigator.dart';
import 'core/snack_bar/app_snack_bar.dart';
import 'core/themes/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return Shortcuts(
          shortcuts: <LogicalKeySet, Intent>{
            LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: child,
            builder: EasyLoading.init(),
            navigatorKey: AppNavigator.navigatorKey,
            scaffoldMessengerKey: AppSnackBar.scaffoldKey,
          ),
        );
      },
      child: const Splash(),
    );
  }
}
