/*import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MoonPage extends StatefulWidget {
  @override
  _FrontCameraScreenState createState() => _FrontCameraScreenState();
}

class _FrontCameraScreenState extends State<MoonPage> {
  late CameraController _controller;

  void initState() {
    super.initState();
    _controller = CameraController(CameraDescription(
        name: "name",
        lensDirection: CameraLensDirection.front,
        sensorOrientation: CameraController.kUninitializedCameraId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraPreview(_controller),
    );
  }
}*/
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MoonPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  MoonPage({required this.cameras});

  @override
  _MoonPageState createState() => _MoonPageState();
}

class _MoonPageState extends State<MoonPage> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _initializeCamera() async {
    final cameras = widget.cameras;
    final frontCamera = cameras
        .firstWhere((camera) => camera.lensDirection == CameraLensFacing.front);

    _controller = CameraController(frontCamera, ResolutionPreset.medium);

    await _controller.initialize();

    if (!mounted) {
      return;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
