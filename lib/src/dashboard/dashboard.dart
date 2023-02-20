import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/all_services/all_service_model.dart';
import 'package:handyman_provider/core/themes/app_colors.dart';
import 'package:handyman_provider/core/themes/app_styles.dart';
import 'package:handyman_provider/src/accepted_service/accepted_details.dart';
import 'package:handyman_provider/src/accepted_service/accepted_service.dart';
import 'package:handyman_provider/src/assigned_service/assigned_service.dart';
import 'package:handyman_provider/src/documents/documents.dart';
import 'package:handyman_provider/src/my_balance/my_balance.dart';
import 'package:handyman_provider/src/my_income/my_income.dart';
import 'package:handyman_provider/src/my_services/my_services.dart';
import 'package:handyman_provider/src/profile/profile.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:stacked/stacked.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import 'categories.dart';
import 'dashboard_viewmodel.dart';
import 'service_details.dart';

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
          appBar: AppBar(
            title: Text(
              model.selectedIndex == 0
                  ? 'Dashboard'
                  : model.selectedIndex == 1
                      ? 'My Services'
                      : model.selectedIndex == 2
                          ? 'My Profile'
                          : 'More Options',
            ),
          ),
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
                filledIcon: EvaIcons.person,
                outlinedIcon: EvaIcons.person_outline,
              ),
              BarItem(
                filledIcon: EvaIcons.list,
                outlinedIcon: EvaIcons.list_outline,
              ),
            ],
            selectedIndex: model.selectedIndex,
            onItemSelected: model.onItemSelected,
            backgroundColor: AppColors.secondary,
            waterDropColor: AppColors.white,
            bottomPadding: 20.h,
            inactiveIconColor: AppColors.white.withOpacity(0.6),
          ),
          body: SafeArea(
            child: PageView(
              controller: model.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.secondary,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Assigned Services',
                                style: AppStyles.text18PxSemiBold
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () => model.onNavigate(
                                const AssignedService(),
                              ),
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.r,
                                  ),
                                  side: const BorderSide(
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              child: Text(
                                'View All',
                                style: AppStyles.text16PxSemiBold
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 120.h,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: (model.assigned?.data ?? []).length,
                          separatorBuilder: (_, __) => SizedBox(height: 10.h),
                          itemBuilder: (_, index) {
                            final s = (model.assigned?.data ?? [])[index];
                            return InkWell(
                              onTap: () => model.onNavigate(
                                AcceptedDetails(acceptedServiceData: s),
                              ),
                              child: Material(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                elevation: 2.sp,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 15.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        s.name,
                                        style: AppStyles.text18PxSemiBold,
                                      ),
                                      Text(
                                        s.serviceDate.toString(),
                                        style:
                                            AppStyles.text16PxSemiBold.copyWith(
                                          color: AppColors.disabled,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Chip(
                                          label: Text(
                                            s.serviceStatus,
                                            style: AppStyles.text16PxSemiBold
                                                .copyWith(
                                              color: AppColors.white,
                                            ),
                                          ),
                                          backgroundColor: AppColors.green,
                                          visualDensity: VisualDensity.compact,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.secondary,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Accepted Services',
                                style: AppStyles.text18PxSemiBold
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () => model.onNavigate(
                                const AcceptedService(),
                              ),
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.r,
                                  ),
                                  side: const BorderSide(
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              child: Text(
                                'View All',
                                style: AppStyles.text16PxSemiBold
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 120.h,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: (model.accepted?.data ?? []).length,
                          separatorBuilder: (_, __) => SizedBox(height: 10.h),
                          itemBuilder: (_, index) {
                            final s = (model.accepted?.data ?? [])[index];
                            return InkWell(
                              onTap: () => model.onNavigate(
                                AcceptedDetails(acceptedServiceData: s),
                              ),
                              child: Material(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                elevation: 2.sp,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 15.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        s.name,
                                        style: AppStyles.text18PxSemiBold,
                                      ),
                                      Text(
                                        s.serviceDate.toString(),
                                        style:
                                            AppStyles.text16PxSemiBold.copyWith(
                                          color: AppColors.disabled,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Chip(
                                          label: Text(
                                            s.serviceStatus,
                                            style: AppStyles.text16PxSemiBold
                                                .copyWith(
                                              color: AppColors.white,
                                            ),
                                          ),
                                          backgroundColor: AppColors.green,
                                          visualDensity: VisualDensity.compact,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 30.h),
                      for (final d
                          in model.model?.data ?? <GeneralServiceModel>[])
                        if (d.services.isNotEmpty)
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: AppColors.secondary,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        d.name,
                                        style: AppStyles.text18PxSemiBold
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () => model.onNavigate(
                                        Categories(m: d),
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.r,
                                          ),
                                          side: const BorderSide(
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'View All',
                                        style: AppStyles.text16PxSemiBold
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.h),
                              GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.725,
                                  crossAxisSpacing: 10.w,
                                ),
                                itemCount: d.services.length > 3
                                    ? 3
                                    : d.services.length,
                                itemBuilder: (_, index) {
                                  final s = d.services[index];
                                  return InkWell(
                                    onTap: () => model.onNavigate(
                                      ServiceDetails(service: s),
                                    ),
                                    child: Material(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(
                                        10.r,
                                      ),
                                      elevation: 2.sp,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CachedNetworkImage(
                                            imageUrl: s.icon,
                                            height: 100.h,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(height: 5.h),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.w,
                                            ),
                                            child: Text(
                                              s.title,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: AppStyles.text16PxSemiBold
                                                  .copyWith(
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.h),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.w,
                                            ),
                                            child: SmoothStarRating(
                                              allowHalfRating: false,
                                              onRatingChanged: (v) {},
                                              starCount: 5,
                                              rating: (s.rating.toDouble()) > 5
                                                  ? 5
                                                  : s.rating.toDouble(),
                                              size: 16.h,
                                              filledIconData: Icons.blur_off,
                                              halfFilledIconData: Icons.blur_on,
                                              color: Colors.amber,
                                              borderColor: Colors.amber,
                                              spacing: 0.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                      SizedBox(height: 80.h),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Text(
                      //         'Services Categories',
                      //         style: AppStyles.text24PxBold.copyWith(
                      //           color: AppColors.secondary,
                      //         ),
                      //       ),
                      //     ),
                      //     // CustomButton(
                      //     //   onTap: () => model.onNavigate(
                      //     //     const Categories(),
                      //     //   ),
                      //     //   label: 'View All',
                      //     // ),
                      //   ],
                      // ),
                      // SizedBox(height: 10.h),
                      // GridView.builder(
                      //   shrinkWrap: true,
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   gridDelegate:
                      //       SliverGridDelegateWithFixedCrossAxisCount(
                      //     crossAxisCount: 3,
                      //     crossAxisSpacing: 10.w,
                      //     mainAxisSpacing: 10.h,
                      //   ),
                      //   itemCount: (model.model?.data ?? []).length,
                      //   itemBuilder: (_, index) {
                      //     final s = (model.model?.data ?? [])[index];
                      //     return InkWell(
                      //       onTap: () => model.onNavigate(
                      //         Categories(m: s),
                      //       ),
                      //       child: Material(
                      //         color: AppColors.white,
                      //         borderRadius: BorderRadius.circular(10.r),
                      //         elevation: 2.sp,
                      //         child: Padding(
                      //           padding: EdgeInsets.symmetric(
                      //             horizontal: 15.w,
                      //             vertical: 15.h,
                      //           ),
                      //           child: Center(
                      //             child: Text(
                      //               s.name,
                      //               textAlign: TextAlign.center,
                      //               style: AppStyles.text18PxSemiBold
                      //                   .copyWith(
                      //                 color: AppColors.secondary,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // ),
                      // SizedBox(height: 30.h),
                    ],
                  ),
                ),
                const MyServices(hasBack: false),
                Profile(
                  profileModel: model.profileModel,
                  onPicked: (picked) => model.onPicked(picked, context),
                  viewModel: model,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 60.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      InkWell(
                        onTap: () => model.onNavigate(
                          const Documents(),
                        ),
                        child: Material(
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
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => model.onNavigate(
                          const AssignedService(),
                        ),
                        child: Material(
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
                                const IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    EvaIcons.arrow_forward,
                                    color: AppColors.secondary,
                                  ),
                                  visualDensity: VisualDensity.compact,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => model.onNavigate(
                          const AcceptedService(),
                        ),
                        child: Material(
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
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => model.onNavigate(
                          const MyBalance(),
                        ),
                        child: Material(
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
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => model.onNavigate(
                          const MyIncome(),
                        ),
                        child: Material(
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
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () => model.onNavigate(
                          const MyServices(),
                        ),
                        child: Material(
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
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: model.logOut,
                        child: Material(
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
                                  style: AppStyles.text18PxSemiBold.copyWith(
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
