import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/src/accepted_service/accepted_details.dart';
import 'package:stacked/stacked.dart';

import 'assigned_service_viewmodel.dart';

class AssignedService extends StatelessWidget {
  const AssignedService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssignedServiceViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<AssignedServiceViewModel>(),
      onViewModelReady: (model) => model.init(),
      builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Assigned Services'),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      bottom: 60.h,
                      top: 20.h,
                    ),
                    itemCount: (model.model?.data ?? []).length,
                    separatorBuilder: (_, __) => SizedBox(height: 10.h),
                    itemBuilder: (_, index) {
                      final s = (model.model?.data ?? [])[index];
                      return InkWell(
                        onTap: () => model.onNavigate(
                          AcceptedDetails(
                            acceptedServiceData: s,
                            isAssigned: true,
                          ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  s.name,
                                  style: AppStyles.text18PxSemiBold,
                                ),
                                Text(
                                  s.serviceDate.toString(),
                                  style: AppStyles.text16PxSemiBold.copyWith(
                                    color: AppColors.disabled,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Chip(
                                    label: Text(
                                      s.serviceStatus,
                                      style:
                                          AppStyles.text16PxSemiBold.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    backgroundColor: AppColors.green,
                                    visualDensity: VisualDensity.compact,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
