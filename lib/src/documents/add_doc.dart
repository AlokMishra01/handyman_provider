import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/document_types/document_types_model.dart';
import 'package:handyman_provider/core/models/documents/documents_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_dropdown_field.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'add_document_view_model.dart';

class AddDoc extends StatelessWidget {
  const AddDoc({Key? key, this.docModel}) : super(key: key);

  final DocumentModel? docModel;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddDocumentViewModel>.reactive(
        disposeViewModel: false,
        viewModelBuilder: () => AppLocator.locator<AddDocumentViewModel>(),
        onViewModelReady: (model) => model.init(docModel),
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
                          model != null ? 'Update Document' : 'Add Document',
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
                          if (docModel == null)
                            CustomDropdownField<DocumentTypeModel>(
                              value: model.selected,
                              // items: (model.model?.data ?? []).map((e) {
                              //   return DropdownMenuItem(
                              //     value: e,
                              //     child: Text(
                              //       e.title,
                              //       maxLines: 1,
                              //       style: AppStyles.text16PxSemiBold.copyWith(
                              //         color: AppColors.black,
                              //       ),
                              //     ),
                              //   );
                              // }).toList(),
                              items: [],
                              onChanged: model.onSelect,
                              hint: 'Select service type',
                            ),
                          if (docModel == null) SizedBox(height: 10.h),
                          AspectRatio(
                            aspectRatio: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.background.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        final result = await FilePicker.platform
                                            .pickFiles();
                                      },
                                      icon: Icon(
                                        EvaIcons.file_add_outline,
                                        size: 36.sp,
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                    Text(
                                      'Upload Document',
                                      style: AppStyles.text16PxSemiBold,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          CustomButton(
                            onTap: () {},
                            label: docModel != null
                                ? 'Update Document'
                                : 'Add Document',
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
