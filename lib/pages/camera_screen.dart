import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  CameraController cameraController;
  List cameras;
  int selectedCameraIndex;
  String imgPath;

  Future _initCameraController(CameraDescription cameraDescription) async {
    if(cameraController != null) {
      await cameraController.dispose();
    }

    cameraController = CameraController(cameraDescription, ResolutionPreset.high);

    cameraController.addListener(() {
      if(mounted) {
        setState(() {

        });
      }
    });

    if(cameraController.value.hasError){
      print('camera error ${cameraController.value.errorDescription}');
    }

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }
  }

  if(mounted) {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }

  void _showCameraException(CameraException e) {

  }
}


