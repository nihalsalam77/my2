import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  File? imageFile;

  void _getFromCamera() async{
    XFile? pickedFile = (await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxHeight: 1080,
        maxWidth: 1080,)) as XFile?;

    setState(() {
      imageFile = File(pickedFile!.path);
    });
    //Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 50,),
          imageFile != null ?
          Container(
            child: Image.file(imageFile!),
          ) :
              Container(
                child: Icon(
                  Icons.camera,
                  color: Colors.blueAccent,
                  size: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
          Padding(
              padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              child: Text("Camera"),
              onPressed: (){
                _getFromCamera();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black12),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 26))
              ),
            ),
          )
        ],
      ),
    );
  }
}
