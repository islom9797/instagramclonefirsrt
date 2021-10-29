import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagramclone/custom/Utils.dart';

class MyUploadPage extends StatefulWidget {
  PageController? pagecontroller2;
  MyUploadPage({this.pagecontroller2});
  @override
  _MyUploadPageState createState() => _MyUploadPageState();
}

class _MyUploadPageState extends State<MyUploadPage> {
  var _controller = TextEditingController();
  XFile? image;
  File? storedimage;
  final ImagePicker picker = ImagePicker();

  _iamge() async {
    XFile? _image =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      image = _image;
      storedimage = File(image!.path);
    });
  }
  imgFromCamera() async {
    XFile? _image = await picker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      image = _image;
      storedimage = File(image!.path);
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _iamge();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Upload",
          style: Utils.textstyle,
        ),
        actions: [
          IconButton(
              onPressed: () {
                widget.pagecontroller2?.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
              },
              icon: Icon(
                Icons.photo_camera_rounded,
                color: Colors.orangeAccent,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              GestureDetector(
                onTap: (){_showPicker(context);},
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 1.5,
                  color: Colors.grey.withOpacity(0.4),
                  child: image == null
                      ? Center(
                          child: Icon(
                            Icons.add_a_photo,
                            size: 50,
                            color: Colors.white,
                          ),
                        )
                      : Stack(children: [
                          Image.file(
                            storedimage!,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      image = null;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.delete_forever,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ] //,width: double.infinity,height: double.infinity,fit: BoxFit.cover,
                          ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: "Caption",
                      hintStyle:
                          TextStyle(fontSize: 17, color: Colors.black38)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
