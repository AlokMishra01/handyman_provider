import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/helpers/assets_helper.dart';
import 'package:stacked/stacked.dart';

import '/core/di/app_locator.dart';
import 'splash_view_model.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => AppLocator.locator<SplashViewModel>(),
      onViewModelReady: (model) => model.initializeApp(),
      builder: (_, model, child) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(24.sp),
            child: Center(
              child: Image.asset(
                AssetsHelper.appLogo,
                width: 200.w,
              ),
            ),
          ),
        );
      },
    );
  }
}
