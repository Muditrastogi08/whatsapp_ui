import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/scheduler.dart';

class Homeprovider with ChangeNotifier {
  List<CameraDescription> _allCameras = [];
  List<CameraDescription> get allCameras => _allCameras;

  Future<void> fetchCamera() async {
    _allCameras = await availableCameras();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      notifyListeners();
    });
  }

//   bool _fetchingCameraControllers = true;
//   bool get fetchingCameraControllers => _fetchingCameraControllers;

//   Future initCamera(CameraController controller) async {
//     _fetchingCameraControllers = true;
// // create a CameraController
//     controller = ;
// // Next, initialize the controller. This returns a Future.
//     try {
//       await controller.initialize();
//     } on CameraException catch (e) {
//       log("camera error $e");
//     }
//     _fetchingCameraControllers = false;
//     SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
//       notifyListeners();
//     });
//   }
}
