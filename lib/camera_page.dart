import 'package:camera/camera.dart';
import 'package:face_mask_detect/main.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class cameraPage extends StatefulWidget {
  const cameraPage({ Key? key }) : super(key: key);

  @override
  _cameraPageState createState() => _cameraPageState();
}

class _cameraPageState extends State<cameraPage> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = "";

  void initState(){
    super.initState();
    loadCamera();
    loadmodel();
  }

  loadCamera(){
    cameraController = CameraController(camera![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value){
      if(!mounted){
        return;
      }else{
        setState(() {
          cameraController!.startImageStream((ImageStream) {
            cameraImage = ImageStream;
            runModel();
          });
        });
      }
    });
  }

  runModel() async{
    if(cameraImage!=null){
      var predictions = await Tflite.runModelOnFrame(bytesList: cameraImage!.planes.map((plane){
        return plane.bytes;
      }).toList(),

        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 1,
        threshold: 0.1,
        asynch: true,

      );
      predictions!.forEach((element) { 
        setState(() {
          output = element['label'];
        });
      });
    }
  }

  loadmodel() async{
    await Tflite.loadModel(model: "assets/model.tflite", labels: "assets/labels.txt");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 40.0),
            child: Container(
              height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width,
              child: !cameraController!.value.isInitialized?
              Container():

              AspectRatio(aspectRatio: cameraController!.value.aspectRatio, 
              child: CameraPreview(cameraController!),
              ),
            ),
          ),
          Text(output, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            backgroundColor: Colors.red,

          ),)
        ],
      ),
    );
  }
}