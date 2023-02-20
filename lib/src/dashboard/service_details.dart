import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/all_services/service_by_id_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:stacked/stacked.dart';

import 'service_details_viewmodel.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key, required this.service}) : super(key: key);

  final ServiceIDModel service;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServiceDetailsViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<ServiceDetailsViewModel>(),
      onViewModelReady: (model) => model.init(service),
      builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0.w,
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(service.icon),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(service.title),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
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
                            'Service Packages',
                            style: AppStyles.text18PxSemiBold
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        const TextButton(
                          onPressed: null,
                          child: Text(''),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 10.w,
                    ),
                    itemCount: (model.model?.data.packages ?? []).length,
                    itemBuilder: (_, index) {
                      final s = (model.model?.data.packages ?? [])[index];
                      return Material(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                        elevation: 2.sp,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            // if (s.description.isNotEmpty) SizedBox(height: 5.h),
                            // if (s.description.isNotEmpty)
                            //   Padding(
                            //     padding: EdgeInsets.symmetric(
                            //       horizontal: 10.w,
                            //     ),
                            //     child: Text(
                            //       s.description.removeTags().trim(),
                            //       maxLines: 3,
                            //       overflow: TextOverflow.ellipsis,
                            //       style: AppStyles.text14PxSemiBold.copyWith(
                            //         color: AppColors.grey,
                            //       ),
                            //     ),
                            //   ),
                            SizedBox(height: 5.h),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              child: Text(
                                'RM ${double.parse(s.cost) - double.parse(s.discount)}/-',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              child: Text(
                                'Duration ${s.duration}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.primary,
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
                                size: 24.h,
                                filledIconData: Icons.blur_off,
                                halfFilledIconData: Icons.blur_on,
                                color: Colors.amber,
                                borderColor: Colors.amber,
                                spacing: 0.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 30.h),
                  if ((model.model?.data.professionalServices ?? []).isNotEmpty)
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.secondary,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'My Packages',
                              style: AppStyles.text18PxSemiBold
                                  .copyWith(color: AppColors.white),
                            ),
                          ),
                          const TextButton(
                            onPressed: null,
                            child: Text(''),
                          ),
                        ],
                      ),
                    ),
                  if ((model.model?.data.professionalServices ?? []).isNotEmpty)
                    SizedBox(height: 10.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.95,
                      crossAxisSpacing: 10.w,
                    ),
                    itemCount:
                        (model.model?.data.professionalServices ?? []).length,
                    itemBuilder: (_, index) {
                      final s =
                          (model.model?.data.professionalServices ?? [])[index];
                      return Material(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                        elevation: 2.sp,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CachedNetworkImage(
                              imageUrl: s.professionalImage,
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
                                '${s.serviceName} By ${s.professionalName}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            // if (s.description.isNotEmpty) SizedBox(height: 5.h),
                            // if (s.description.isNotEmpty)
                            //   Padding(
                            //     padding: EdgeInsets.symmetric(
                            //       horizontal: 10.w,
                            //     ),
                            //     child: Text(
                            //       s.description.removeTags(),
                            //       maxLines: 3,
                            //       overflow: TextOverflow.ellipsis,
                            //       style: AppStyles.text16PxSemiBold.copyWith(
                            //         color: AppColors.black,
                            //       ),
                            //     ),
                            //   ),
                            SizedBox(height: 5.h),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              child: Text(
                                'RM ${double.parse(s.price) - double.parse(s.discount)}/-',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              child: Text(
                                'Duration ${s.duration}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.text16PxSemiBold.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  if ((model.model?.data.professionalServices ?? []).isNotEmpty)
                    SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
