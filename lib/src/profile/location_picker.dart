import 'package:flutter/material.dart';
// import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class LocationPicker extends StatelessWidget {
  const LocationPicker({
    Key? key,
    required this.lat,
    required this.long,
    // required this.onPicked,
  }) : super(key: key);

  final double lat;
  final double long;
  // final Function(PickedData) onPicked;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
    // return FlutterLocationPicker(
    //   initPosition: LatLong(lat, long),
    //   selectLocationButtonStyle: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(AppColors.secondary),
    //   ),
    //   initZoom: 11,
    //   minZoomLevel: 5,
    //   maxZoomLevel: 16,
    //   trackMyPosition: true,
    //   searchBarBackgroundColor: AppColors.white,
    //   onError: (e) => log(e.toString(), error: e),
    //   onPicked: onPicked,
    // );
  }
}
