import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:handyman_provider/core/models/service_type_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    Key? key,
    required this.title,
    required this.value,
    this.services = const [],
    this.isImage = false,
    this.latLng,
  }) : super(key: key);

  final String title;
  final String value;
  final List<ServiceTypeModel> services;
  final bool isImage;
  final LatLng? latLng;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppStyles.text16PxSemiBold,
        ),
        if (latLng == null && !isImage && services.isEmpty)
          Text(
            value,
            style: AppStyles.text20PxBold.copyWith(
              color: AppColors.secondary,
            ),
          ),
        if (latLng == null && isImage && services.isEmpty)
          CachedNetworkImage(
            imageUrl: value,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        if (services.isNotEmpty)
          Row(
            children: [
              for (final s in services)
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Chip(
                    label: Text(
                      s.name,
                      style: AppStyles.text16PxSemiBold.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    backgroundColor: AppColors.secondary,
                    visualDensity: VisualDensity.compact,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
            ],
          ),
        if (latLng != null)
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: AspectRatio(
                aspectRatio: 1,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: latLng!,
                    zoom: 16,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId('MyGeolocation'),
                      position: latLng!,
                    )
                  },
                  myLocationButtonEnabled: false,
                  mapToolbarEnabled: false,
                  compassEnabled: false,
                  rotateGesturesEnabled: false,
                  scrollGesturesEnabled: false,
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  tiltGesturesEnabled: false,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
