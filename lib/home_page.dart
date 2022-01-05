import 'dart:ffi';

import 'package:face_mask_detect/camera_page.dart';
import 'package:face_mask_detect/emotion_camera.dart';
import 'package:flutter/material.dart';
import 'package:face_mask_detect/route.dart' as route;


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 500.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Colors.cyan[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      "Face Mask Detection",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                        ),
                      ),
                      Image(image: AssetImage("assets/homepageLogo.png")),
                      SizedBox(height: 10.0,),
      
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Facemask detection using machine learning model and dataset from kaggle",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                      ),
                  ],
                ),
              ),
            ),
            Center(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 180.0,
                  height: 50.0,
                  child: Center(child: Text("FaceMask Camera",
                    style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white,
                    ),
                  ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0Xffcb4335),
                      borderRadius: BorderRadius.circular(50),
                    ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => cameraPage()));
                },
              ),
            ),

            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 500.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Colors.cyan[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      "Face Mask Detection",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                        ),
                      ),
                      Image(image: AssetImage("assets/homepageLogo.png")),
                      SizedBox(height: 10.0,),
      
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Emotions detection using machine learning model and dataset from kaggle",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                      ),
                  ],
                ),
              ),
            ),
            Center(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 180.0,
                  height: 50.0,
                  child: Center(child: Text("Emotion Camera",
                    style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white,
                    ),
                  ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0Xffcb4335),
                      borderRadius: BorderRadius.circular(50),
                    ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmotionCamera()));
                },
              ),
            ),
      
            
          ],
        ),
      ),
    ));
  }
}