import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/all_services/all_service_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:stacked/stacked.dart';

import 'categories_viewmodel.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key, required this.m}) : super(key: key);

  final GeneralServiceModel m;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<CategoriesViewModel>(),
      onViewModelReady: (model) {},
      builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(m.name),
          ),
          body: SafeArea(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.65,
                crossAxisSpacing: 10.w,
              ),
              itemCount: m.services.length,
              itemBuilder: (_, index) {
                final s = m.services[index];
                return InkWell(
                  onTap: () => model.onNavigate(
                    Scaffold(),
                  ),
                  child: Material(
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
                        SizedBox(height: 5.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                          ),
                          child: Text(
                            'RM ${s.cost}',
                            style: AppStyles.text14PxSemiBold.copyWith(
                              color: AppColors.green,
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
        );
      },
    );
  }
}
