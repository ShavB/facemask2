import 'package:camera/camera.dart';
import 'package:face_mask_detect/camera_page.dart';
import 'package:face_mask_detect/home_page.dart';
import 'package:flutter/material.dart';
import 'package:face_mask_detect/route.dart' as route;
import 'package:flutter/services.dart';
import 'package:fullscreen/fullscreen.dart';

//List of Cameras
List<CameraDescription>? camera;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  camera = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.HOMEPAGE,
    );
  }
}