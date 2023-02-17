import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/profile_info_widget.dart';
import 'package:handyman_provider/src/profile/edit_profile.dart';
import 'package:handyman_provider/src/profile/update_id.dart';
import 'package:handyman_provider/utils/string_converter.dart';
import 'package:icons_plus/icons_plus.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, this.profileModel}) : super(key: key);

  final ProfileModel? profileModel;

  @override
  Widget build(BuildContext context) {
    if (profileModel == null) {
      return Container();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          child: Text(
            'Profile',
            style: AppStyles.text36PxBold.copyWith(
              color: AppColors.secondary,
            ),
          ),
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
                        Align(
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 62.r,
                                backgroundColor: AppColors.secondary,
                                child: CircleAvatar(
                                  radius: 60.r,
                                  backgroundImage: CachedNetworkImageProvider(
                                    profileModel?.profileImage ?? '',
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0.sp,
                                right: 0.sp,
                                child: CircleAvatar(
                                  radius: 20.r,
                                  child: Padding(
                                    padding: EdgeInsets.all(2.sp),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          (profileModel?.verificationStatus ??
                                                  false)
                                              ? AppColors.green
                                              : AppColors.primary,
                                      child: Icon(
                                        (profileModel?.verificationStatus ??
                                                false)
                                            ? EvaIcons.checkmark_outline
                                            : EvaIcons.close,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   bottom: 0.sp,
                              //   right: 0.sp,
                              //   child: InkWell(
                              //     onTap: () {},
                              //     child: CircleAvatar(
                              //       child: Padding(
                              //         padding: EdgeInsets.all(2.sp),
                              //         child: const CircleAvatar(
                              //           backgroundColor: AppColors.white,
                              //           child: Icon(
                              //             EvaIcons.edit_outline,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                          width: double.infinity,
                        ),
                        ProfileInfoWidget(
                          title: 'Balance:',
                          value: 'RM ${profileModel?.balance ?? ''}',
                        ),
                        SizedBox(
                          height: 10.h,
                          width: double.infinity,
                        ),
                        ProfileInfoWidget(
                          title: 'Name:',
                          value: (profileModel?.name ?? '').toUpperCase(),
                        ),
                        SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Mobile Number:',
                          value: profileModel?.mobile ?? '',
                        ),
                        SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Email:',
                          value: profileModel?.email ?? '',
                          verified:
                              (profileModel?.emailVerificationStatus ?? false)
                                  ? 0
                                  : 1,
                        ),
                        SizedBox(height: 10.h),
                        // ProfileInfoWidget(
                        //   title: 'City:',
                        //   value: profileModel?.detail?.city?.name ?? '',
                        // ),
                        // SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Address:',
                          value: profileModel?.detail?.address ?? '',
                        ),
                        SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Geolocation:',
                          value: profileModel?.detail?.address ?? '',
                          latLng: LatLng(
                            profileModel?.detail?.geolocation?.latitude ?? 0.0,
                            profileModel?.detail?.geolocation?.longitude ?? 0.0,
                          ),
                        ),
                        // SizedBox(height: 5.h),
                        // const Divider(),
                        // SizedBox(height: 5.h),
                        // Row(
                        //   children: [
                        //     Flexible(
                        //       child: CustomButton(
                        //         onTap: () {
                        //           Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //               builder: (_) => EditProfile(
                        //                 profileModel: profileModel!,
                        //               ),
                        //             ),
                        //           );
                        //         },
                        //         elevation: 2,
                        //         label: 'Update Profile',
                        //       ),
                        //     ),
                        //     SizedBox(width: 10.h),
                        //     Flexible(
                        //       child: CustomButton(
                        //         onTap: () {},
                        //         elevation: 2,
                        //         label: 'Update Address',
                        //       ),
                        //     ),
                        //   ],
                        // ),
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
                        ProfileInfoWidget(
                          title: 'Short Info:',
                          value: profileModel?.detail?.shortInfo ?? '',
                        ),
                        SizedBox(
                          height: 10.h,
                          width: double.infinity,
                        ),
                        ProfileInfoWidget(
                          title: 'Education Level:',
                          value:
                              profileModel?.detail?.educationLevel?.name ?? '',
                        ),
                        SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Skills:',
                          value: profileModel?.detail?.skills ?? '',
                        ),
                        SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Offered Services:',
                          value: '',
                          services: profileModel?.offeredServices ?? [],
                        ),
                        SizedBox(height: 10.h),
                        ProfileInfoWidget(
                          title: 'Experience:',
                          value: (profileModel?.detail?.experience ?? '')
                              .removeTags(),
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
                        ProfileInfoWidget(
                          title: 'National Id/Passport Number:',
                          value: profileModel?.idNumber ?? '',
                        ),
                        SizedBox(height: 10.h, width: double.infinity),
                        ProfileInfoWidget(
                          title: 'National Id/Passport:',
                          value: profileModel?.idCardThumb ?? '',
                          isImage: true,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => EditProfile(
                          profileModel: profileModel!,
                        ),
                      ),
                    );
                  },
                  elevation: 2,
                  label: 'Update Profile',
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => UpdateID(
                          profileModel: profileModel!,
                        ),
                      ),
                    );
                  },
                  elevation: 2,
                  label: 'Update Identification',
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlacePicker(
                          apiKey: "AIzaSyBYGN-wd0FvWq6AchLRGCNkfO5ThUIbzrM",
                          initialPosition: LatLng(
                            profileModel!.detail!.geolocation!.latitude,
                            profileModel!.detail!.geolocation!.longitude,
                          ),
                          onPlacePicked: (result) {
                            print(result.name);
                            Navigator.of(context).pop();
                          },
                          useCurrentLocation: true,
                          resizeToAvoidBottomInset: false,
                        ),
                      ),
                    );
                  },
                  elevation: 2,
                  label: 'Update Address',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
