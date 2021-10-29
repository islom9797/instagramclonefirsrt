import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagramclone/model/pot_model.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

 int changegridview=2;
  List<Post> item = [];
  var now = DateTime.now();
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

  String post_img1 =
      "https://firebasestorage.googleapis.com/v0/b/koreanguideway.appspot.com/o/develop%2Fpost.png?alt=media&token=f0b1ba56-4bf4-4df2-9f43-6b8665cdc964        ";
  String post_img2 =
      "https://firebasestorage.googleapis.com/v0/b/koreanguideway.appspot.com/o/develop%2Fpost2.png?alt=media&token=ac0c131a-4e9e-40c0-a75a-88e586b28b7";

  // print(item.length);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    item.add(Post(
        postImage: post_img1,
        caption: "lorem        sg sdnbglksndfdskfndsfdsl"));
    item.add(Post(
        postImage: post_img2,
        caption: "lorem jsabj kfkalsfnk dnbglksndfdskfndsfdsl"));
    item.add(Post(
        postImage: post_img2,
        caption: "lorem jsabj kfkalsfnk dnbglksndfdskfndsfdsl"));
    item.add(Post(
        postImage: post_img2,
        caption: "lorem jsabj kfkalsfnk dnbglksndfdskfndsfdsl"));
    item.add(Post(
        postImage: post_img2,
        caption: "lorem jsabj kfkalsfnk dnbglksndfdskfndsfdsl"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontFamily: "Billabong", fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            //myphoto
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 1.5),
                      borderRadius: BorderRadius.circular(70)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image(
                      image: AssetImage("assets/images/instagram.png"),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.add_circle,
                        color: Colors.purple,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //myinfos
            Text(
              "Islom",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "rixsiyevv@gmail.con",
              style: TextStyle(color: Colors.black38, fontSize: 14),
            ),
            SizedBox(height: 20,),


            Container(
              height: 60,
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.end,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "343",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "POSTS",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(width: 1,color: Colors.grey,height: 30,margin: EdgeInsets.only(bottom: 35),),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "343",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(width: 1,color: Colors.grey,height: 30,margin: EdgeInsets.only(bottom: 35),),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "343",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Followings",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(

                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          changegridview=2;
                        });

                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,

                        child:Center(child:   Icon(Icons.apps),),
                      ),

                  )),
                  Container(height: 30,width: 2,color: Colors.grey,),
                  Expanded(
                      child:Container(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              changegridview=3;
                            });

                          },
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,

                            child:  Icon(Icons.apps),
                          ),
                        ),
                      )),

                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: changegridview),
                    itemCount: item.length,
                    itemBuilder: (ctx,index){
                      return _itemOfPost(item[index]);
                    }
                    )
            )
          ],
        ),
      ),
    );
  }
}
Widget _itemOfPost(Post post){
  return Container(
    margin: EdgeInsets.all(5),
    child: Column(
      children: [
        Expanded(
            child: CachedNetworkImage(
              imageUrl: post.postImage,
              width: double.infinity,
              placeholder: (ctx,url)=>CircularProgressIndicator(),
              errorWidget: (ctx,url,error)=>Icon(Icons.error),
              fit: BoxFit.cover,
            )
        )
      ],
    ),

  );
}