import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'my_income_viewmodel.dart';

class MyIncome extends StatelessWidget {
  const MyIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyIncomeViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<MyIncomeViewModel>(),
      onViewModelReady: (model) => model.init(),
      builder: (_, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5.w),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        EvaIcons.arrow_back,
                        size: 28.sp,
                        color: AppColors.secondary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 10.h,
                      ),
                      child: Text(
                        'My Income',
                        style: AppStyles.text36PxBold.copyWith(
                          color: AppColors.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      bottom: 60.h,
                    ),
                    itemCount: (model.model?.data ?? []).length,
                    separatorBuilder: (_, __) => SizedBox(height: 10.h),
                    itemBuilder: (_, index) {
                      final b = (model.model?.data ?? [])[index];
                      return Material(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        elevation: 2.sp,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 15.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                b.name,
                                style: AppStyles.text16PxSemiBold,
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'RM ${b.amount}',
                                style: AppStyles.text18PxSemiBold.copyWith(
                                  color: AppColors.green,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                b.createdAt!.toLocal().toString(),
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.secondary,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                b.paymentChannel.toUpperCase(),
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.disabled,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Chip(
                                  label: Text(
                                    b.paymentStatus.toUpperCase(),
                                    style: AppStyles.text16PxSemiBold.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  backgroundColor: b.paymentStatus == 'unpaid'
                                      ? AppColors.primary
                                      : AppColors.secondary,
                                  visualDensity: VisualDensity.compact,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
