import 'package:face_mask_detect/camera_page.dart';
import 'package:face_mask_detect/emotion_camera.dart';
import 'package:face_mask_detect/home_page.dart';
import 'package:face_mask_detect/main.dart';
import 'package:flutter/material.dart';

const String SPLASHSCREEN = "splashscreen";
const String CAMERAPAGE = "camerapage";
const String HOMEPAGE = "homepage";
const String EMOTIONCAMERA = "emotioncamera";

Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case CAMERAPAGE:
      return MaterialPageRoute(builder: (context)=> cameraPage());
    
    case HOMEPAGE:
      return MaterialPageRoute(builder: (context)=> HomePage());

    case EMOTIONCAMERA:
      return MaterialPageRoute(builder: (context) => EmotionCamera());
    default:
    throw("Route does not exits");
  }
}