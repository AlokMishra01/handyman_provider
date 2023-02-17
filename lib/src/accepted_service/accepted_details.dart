import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/profile_info_widget.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'accepted_details_viewmodel.dart';

class AcceptedDetails extends StatelessWidget {
  const AcceptedDetails({
    Key? key,
    required this.acceptedServiceData,
    this.isAssigned = false,
  }) : super(key: key);

  final AcceptedServiceData acceptedServiceData;
  final bool isAssigned;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AcceptedDetailsViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<AcceptedDetailsViewModel>(),
      onViewModelReady: (model) => model.init(acceptedServiceData),
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 10.h,
                        ),
                        child: Text(
                          acceptedServiceData.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.text24PxBold.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                        Material(
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
                                  'Service Details',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.text24PxBold.copyWith(
                                    color: AppColors.secondary,
                                  ),
                                ),
                                const Divider(),
                                ProfileInfoWidget(
                                  title: 'Service Name:',
                                  value: model.model.name,
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Ref Number:',
                                  value: model.model.refNo.toString(),
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Service Date:',
                                  value: model.model.serviceDate.toString(),
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Order Status:',
                                  value: model.model.orderStatus.toUpperCase(),
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Amount:',
                                  value: '${model.model.amount} '
                                      '× (${model.model.quantity})',
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Payment Type:',
                                  value: model.model.payment.toUpperCase(),
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Payment Status:',
                                  value:
                                      model.model.paymentStatus.toUpperCase(),
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Service Status:',
                                  value:
                                      model.model.serviceStatus.toUpperCase(),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Consumer Details',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.text24PxBold.copyWith(
                                    color: AppColors.secondary,
                                  ),
                                ),
                                const Divider(),
                                ProfileInfoWidget(
                                  title: 'Consumer Name:',
                                  value:
                                      model.model.orderAddress?.orderName ?? '',
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ProfileInfoWidget(
                                        title: 'Mobile:',
                                        value:
                                            model.model.orderAddress?.mobile ??
                                                '',
                                      ),
                                    ),
                                    SizedBox(width: 5.w),
                                    IconButton(
                                      onPressed: () {
                                        launchUrlString(
                                          'tel:${model.model.orderAddress?.mobile ?? ''}',
                                        );
                                      },
                                      icon: Icon(
                                        EvaIcons.phone_call_outline,
                                        size: 28.sp,
                                        color: AppColors.green,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                ProfileInfoWidget(
                                  title: 'Mobile:',
                                  value:
                                      model.model.orderAddress?.address ?? '',
                                ),
                                SizedBox(height: 10.h),
                                Stack(
                                  children: [
                                    ProfileInfoWidget(
                                      title: 'Geolocation:',
                                      value:
                                          model.model.orderAddress?.address ??
                                              '',
                                      latLng: LatLng(
                                        model.model.orderAddress?.latitude ??
                                            0.0,
                                        model.model.orderAddress?.longitude ??
                                            0.0,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10.h,
                                      right: 10.w,
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.green,
                                        child: IconButton(
                                          onPressed: () {
                                            launchUrlString(
                                              'https://www.google.com/maps?'
                                              'saddr=My+Location&daddr='
                                              '${model.model.orderAddress?.latitude ?? 0.0}'
                                              ','
                                              '${model.model.orderAddress?.longitude ?? 0.0}',
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.directions_outlined,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Questions',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.text24PxBold.copyWith(
                                    color: AppColors.secondary,
                                  ),
                                ),
                                const Divider(),
                                for (final q in model.model.answers)
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: ProfileInfoWidget(
                                      title: q.getQuestion,
                                      value: q.answer.contains('/')
                                          ? 'https://handyman.com.my/storage/${q.answer}'
                                          : q.answer,
                                      isImage: q.answer.contains('/'),
                                    ),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order History',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.text24PxBold.copyWith(
                                    color: AppColors.secondary,
                                  ),
                                ),
                                const Divider(),
                                SizedBox(height: 10.h),
                                Timeline.tileBuilder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  theme: TimelineThemeData(
                                    nodePosition: 0.05,
                                  ),
                                  builder: TimelineTileBuilder.fromStyle(
                                    contentsAlign: ContentsAlign.basic,
                                    contentsBuilder: (_, index) {
                                      final o = model.model.orderHistory[index];
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.w,
                                          vertical: 10.h,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              o.action,
                                              style: AppStyles.text16PxSemiBold
                                                  .copyWith(
                                                color: AppColors.black,
                                              ),
                                            ),
                                            Text(
                                              o.description,
                                              style: AppStyles.text16PxSemiBold
                                                  .copyWith(
                                                color: AppColors.background,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    connectorStyle: ConnectorStyle.dashedLine,
                                    indicatorStyle: IndicatorStyle.dot,
                                    indicatorPositionBuilder: (_, index) {
                                      return 0.15;
                                    },
                                    itemCount: model.model.orderHistory.length,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        if (!isAssigned)
                          if (!(model.model.serviceStatus.toUpperCase() ==
                              'REQUESTED'))
                            CustomButton(
                              onTap: model.complete,
                              elevation: 2,
                              icon: EvaIcons.edit_outline,
                              label: 'Mark Complete',
                            ),
                        if (isAssigned)
                          CustomButton(
                            onTap: model.accept,
                            elevation: 2,
                            icon: EvaIcons.edit_outline,
                            label: 'Accept',
                          )
                      ],
                    ),
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
