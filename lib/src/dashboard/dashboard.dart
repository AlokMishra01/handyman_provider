import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/app_colors.dart';
import 'package:handyman_provider/core/themes/app_styles.dart';
import 'package:handyman_provider/src/accepted_service/accepted_service.dart';
import 'package:handyman_provider/src/assigned_service/assigned_service.dart';
import 'package:handyman_provider/src/documents/documents.dart';
import 'package:handyman_provider/src/my_balance/my_balance.dart';
import 'package:handyman_provider/src/my_income/my_income.dart';
import 'package:handyman_provider/src/my_services/my_services.dart';
import 'package:handyman_provider/src/profile/profile.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import 'dashboard_viewmodel.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<DashboardViewModel>(),
      onViewModelReady: (model) => model.initDashboard(context),
      builder: (_, model, child) {
        return Scaffold(
          bottomNavigationBar: WaterDropNavBar(
            barItems: [
              // BarItem(
              //   filledIcon: EvaIcons.grid,
              //   outlinedIcon: EvaIcons.grid_outline,
              // ),
              BarItem(
                filledIcon: EvaIcons.award,
                outlinedIcon: EvaIcons.award_outline,
              ),
              BarItem(
                filledIcon: EvaIcons.person,
                outlinedIcon: EvaIcons.person_outline,
              ),
              BarItem(
                filledIcon: EvaIcons.settings_2,
                outlinedIcon: EvaIcons.settings_2_outline,
              ),
            ],
            selectedIndex: model.selectedIndex,
            onItemSelected: model.onItemSelected,
            backgroundColor: AppColors.white,
            waterDropColor: AppColors.secondary,
          ),
          body: SafeArea(
            child: PageView(
              controller: model.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.symmetric(
                //         horizontal: 20.w,
                //         vertical: 10.h,
                //       ),
                //       child: Text(
                //         'Dashboard',
                //         style: AppStyles.text36PxBold.copyWith(
                //           color: AppColors.secondary,
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: SingleChildScrollView(
                //         padding: EdgeInsets.only(
                //           left: 20.w,
                //           right: 20.w,
                //           bottom: 60.h,
                //         ),
                //         child: Column(
                //           children: [],
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                const MyServices(hasBack: false),
                Profile(profileModel: model.profileModel),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      child: Text(
                        'Options',
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
                          children: [
                            SizedBox(height: 20.h),
                            Material(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      EvaIcons.file_text_outline,
                                      color: AppColors.secondary,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Documents',
                                      style: AppStyles.text18PxSemiBold,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: () => model.onNavigate(
                                        const Documents(),
                                      ),
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.secondary,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Material(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      EvaIcons.person_done_outline,
                                      color: AppColors.secondary,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Assigned Services',
                                      style: AppStyles.text18PxSemiBold,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: () => model.onNavigate(
                                        const AssignedService(),
                                      ),
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.secondary,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Material(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      EvaIcons.person_done_outline,
                                      color: AppColors.secondary,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Accepted Services',
                                      style: AppStyles.text18PxSemiBold,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: () => model.onNavigate(
                                        const AcceptedService(),
                                      ),
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.secondary,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Material(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.wallet_outlined,
                                      color: AppColors.secondary,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'My Balance',
                                      style: AppStyles.text18PxSemiBold,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: () => model.onNavigate(
                                        const MyBalance(),
                                      ),
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.secondary,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Material(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.wallet_outlined,
                                      color: AppColors.secondary,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'My Income',
                                      style: AppStyles.text18PxSemiBold,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: () => model.onNavigate(
                                        const MyIncome(),
                                      ),
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.secondary,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Material(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      EvaIcons.file_text_outline,
                                      color: AppColors.secondary,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'My Services',
                                      style: AppStyles.text18PxSemiBold,
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: () => model.onNavigate(
                                        const MyServices(),
                                      ),
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.secondary,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Material(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(10.r),
                              elevation: 2.sp,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      EvaIcons.log_out_outline,
                                      color: AppColors.white,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Logout',
                                      style:
                                          AppStyles.text18PxSemiBold.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    const Expanded(child: SizedBox()),
                                    IconButton(
                                      onPressed: model.logOut,
                                      icon: const Icon(
                                        EvaIcons.arrow_forward,
                                        color: AppColors.white,
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
