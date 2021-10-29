import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/model/pot_model.dart';
class MyLikePage extends StatefulWidget {
  @override
  _MyLikePageState createState() => _MyLikePageState();
}

class _MyLikePageState extends State<MyLikePage> {
  List<Post> item = [];
  var now = DateTime.now();

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Instagram",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontFamily: "Billabong"),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))],
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (ctx, index) {
            return _itemOfList(item[index]);
          }),
    );
  }
}
Widget _itemOfList(Post post) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Divider(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image(
                      image: AssetImage("assets/images/instagram.png"),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username0",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        "2020 frb",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.apps),)


            ],
          ),
        ),


        CachedNetworkImage(
            imageUrl: post.postImage,
            placeholder: (context,url)=>CircularProgressIndicator(),
            errorWidget: (context,url,error)=>Icon(Icons.error)
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.insert_comment,color: Colors.grey,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.grey,)),
              ],
            ),
            Icon(Icons.save_outlined)
          ],
        )
      ],
    ),
  );
}
