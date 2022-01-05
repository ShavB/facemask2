import 'package:flutter/material.dart';

class EmotionCamera extends StatefulWidget {
  const EmotionCamera({ Key? key }) : super(key: key);

  @override
  _EmotionCameraState createState() => _EmotionCameraState();
}

class _EmotionCameraState extends State<EmotionCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello Emotions"),
      ),
    );
  }
}