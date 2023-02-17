import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'add_doc.dart';
import 'documents_viewmodel.dart';

class Documents extends StatelessWidget {
  const Documents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DocumentsViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<DocumentsViewModel>(),
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
                        'Documents',
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
                      final d = (model.model?.data ?? [])[index];
                      return Material(
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
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      d.title,
                                      style:
                                          AppStyles.text18PxSemiBold.copyWith(
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                    Text(
                                      d.documentType,
                                      style:
                                          AppStyles.text16PxSemiBold.copyWith(
                                        color: AppColors.disabled,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () => model.onNavigate(
                                  AddDoc(docModel: d),
                                ),
                                child: const Icon(
                                  EvaIcons.edit,
                                  color: AppColors.blue,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () => model.onDelete(d.id),
                                child: const Icon(
                                  EvaIcons.trash_2,
                                  color: AppColors.red,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  EvaIcons.cloud_download,
                                  color: AppColors.green,
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
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AddDoc()),
            ),
            child: const Icon(EvaIcons.plus),
          ),
        );
      },
    );
  }
}
