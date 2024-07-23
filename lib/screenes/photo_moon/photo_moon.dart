/*import 'package:flutter/material.dart';

class PhotoMoon extends StatelessWidget {
  PhotoMoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: Text("My Moon")),
      body: GridView.count(
        crossAxisCount: 5,
        childAspectRatio: 0.5,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 2.0,
        children: [
          _image('assets/gogo.jpg'),
          _image('assets/gogo1.jpg'),
          _image('assets/gogo2.jpg'),
          _image('assets/gogo3.jpg'),
          _image('assets/gogo4.jpg'),
          _image('assets/gogo5.jpg'),
          _image('assets/gogo6.jpg'),
          _image('assets/gogo7.jpg'),
          _image('assets/gogo8.jpg'),
          _image('assets/gogo9.jpg'),
          _image('assets/gogo10.jpg'),
          _image('assets/gogo11.jpg'),
          _image('assets/gogo12.jpg'),
          _image('assets/gogo.jpg'),
          _image('assets/gogo6.jpg'),
        ],
      ),
    );
  }

  Widget _image(String url) {
    return Container(
      child: Image.asset(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}*/
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoMoon extends StatefulWidget {
  const PhotoMoon({super.key});

  @override
  State<PhotoMoon> createState() => _MoonPageState();
}

class _MoonPageState extends State<PhotoMoon> {
  File? imageFile;

  _showOption(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Make a choice"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text("Gallery"),
                      onTap: () => _imageFromGallery(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Text("Camera"),
                      onTap: () => _imageFromCamera(context),
                    )
                  ],
                ),
              ),
            ));
  }

  Future _imageFromGallery(BuildContext context) async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = image as File?;
    });
    Navigator.pop(context);
  }

  Future _imageFromCamera(BuildContext context) async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = image as File?;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("My moon"),
      ),
      body: Center(
          child: imageFile != null
              ? Image.file(
                  imageFile!,
                  width: 400,
                  height: 400,
                )
              : Text("There is No Image")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () => _showOption(context),
        child: Icon(Icons.add_photo_alternate),
      ),
    );
  }
}
