import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/utils/string_converter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'add_service.dart';
import 'my_service_viewmodel.dart';

class MyServices extends StatelessWidget {
  const MyServices({Key? key, this.hasBack = true}) : super(key: key);

  final bool hasBack;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyServiceViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<MyServiceViewModel>(),
      onViewModelReady: (model) => model.init(),
      builder: (_, model, child) {
        return Scaffold(
          appBar: hasBack
              ? AppBar(
                  title: const Text('My Services'),
                )
              : null,
          body: SafeArea(
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
                          s.serviceName,
                          style: AppStyles.text18PxSemiBold,
                        ),
                        Row(
                          children: [
                            Text(
                              'RM ${s.price}',
                              style: AppStyles.text16PxSemiBold.copyWith(
                                color: AppColors.green,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              s.duration,
                              style: AppStyles.text16PxSemiBold.copyWith(
                                color: AppColors.disabled,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          s.description.removeTags(),
                          style: AppStyles.text16PxSemiBold.copyWith(
                            color: AppColors.disabled,
                          ),
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: CustomButton(
                                onTap: () => model.remove(s.id),
                                color: AppColors.primary,
                                label: 'Remove',
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Flexible(
                              flex: 1,
                              child: CustomButton(
                                onTap: () => model.onNavigate(
                                  AddService(serviceModel: s),
                                ),
                                color: AppColors.green,
                                label: 'Edit',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.onNavigate(
              const AddService(),
            ),
            child: const Icon(EvaIcons.plus),
          ),
        );
      },
    );
  }
}
