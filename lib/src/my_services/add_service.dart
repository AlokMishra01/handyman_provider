import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/my_service/my_service_model.dart'
    as my;
import 'package:handyman_provider/core/models/services/services_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_dropdown_field.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'add_service_view_model.dart';

class AddService extends StatelessWidget {
  const AddService({
    Key? key,
    this.serviceModel,
  }) : super(key: key);

  final my.ServiceModel? serviceModel;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddServiceViewModel>.reactive(
        disposeViewModel: false,
        viewModelBuilder: () => AppLocator.locator<AddServiceViewModel>(),
        onViewModelReady: (model) => model.init(serviceModel),
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
                          serviceModel != null
                              ? 'Update Service'
                              : 'Add Service',
                          style: AppStyles.text36PxBold.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 48.h),
                      child: Column(
                        children: [
                          if (serviceModel == null)
                            CustomDropdownField<ServiceModel>(
                              value: model.selected,
                              items: (model.model?.data ?? []).map((e) {
                                return DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    e.title,
                                    maxLines: 1,
                                    style: AppStyles.text16PxSemiBold.copyWith(
                                      color: AppColors.black,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: model.onSelect,
                              hint: 'Select service type',
                            ),
                          if (serviceModel == null) SizedBox(height: 10.h),
                          CustomTextField(
                            hint: 'Price',
                            controller: model.price,
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: 10.h),
                          CustomTextField(
                            hint: 'Duration',
                            controller: model.duration,
                          ),
                          SizedBox(height: 10.h),
                          CustomTextField(
                            hint: 'Description',
                            controller: model.description,
                          ),
                          SizedBox(height: 20.h),
                          CustomButton(
                            onTap: serviceModel != null
                                ? () => model.onEdit(serviceModel!.id)
                                : model.onSave,
                            label: serviceModel != null
                                ? 'Update Service'
                                : 'Add Service',
                            icon: EvaIcons.save_outline,
                            isDisabled: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
