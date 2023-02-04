import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/app_colors.dart';
import 'package:handyman_provider/core/themes/app_styles.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import 'dashboard_viewmodel.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => AppLocator.locator<DashboardViewModel>(),
      onViewModelReady: (model) {},
      builder: (_, model, child) {
        return Scaffold(
          bottomNavigationBar: WaterDropNavBar(
            barItems: [
              BarItem(
                filledIcon: EvaIcons.grid,
                outlinedIcon: EvaIcons.grid_outline,
              ),
              BarItem(
                filledIcon: EvaIcons.award,
                outlinedIcon: EvaIcons.award_outline,
              ),
              BarItem(
                filledIcon: EvaIcons.shopping_bag,
                outlinedIcon: EvaIcons.shopping_bag_outline,
              ),
              BarItem(
                filledIcon: EvaIcons.person,
                outlinedIcon: EvaIcons.person_outline,
              ),
            ],
            selectedIndex: model.selectedIndex,
            onItemSelected: model.onItemSelected,
            backgroundColor: AppColors.white,
            waterDropColor: AppColors.secondary,
          ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  child: Text(
                    'Services',
                    style: AppStyles.text36PxBold.copyWith(
                      color: AppColors.secondary,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      bottom: 60.h,
                    ),
                    child: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
