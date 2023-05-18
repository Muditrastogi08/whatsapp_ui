import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uisecond/Provider/home_provider.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  late Future<void> _initCamContr;
  @override
  void initState() {
    super.initState();
    final hp = Provider.of<Homeprovider>(context, listen: false);
    // .initCamera(_cameraController);
    _cameraController =
        CameraController(hp.allCameras[0], ResolutionPreset.high);
    _initCamContr = _cameraController.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initCamContr,
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done) {
          return Scaffold(
            body: SafeArea(
              child: _cameraController.value.isInitialized
                  ? CameraPreview(_cameraController)
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
