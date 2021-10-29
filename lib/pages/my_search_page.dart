import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/model/user_model.dart';

class MySearchPage extends StatefulWidget {
  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  List<User> item = [];
  var searchconroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
    item.add(User(fullname: "Islom", email: "rixsiyev@gmail.com"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Saerch",
          style: TextStyle(
              color: Colors.black, fontFamily: "Billabong", fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                style: TextStyle(color: Colors.black),
                controller: searchconroller,
                onChanged: (input) {
                  print(input);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    hintText: "Search",
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: item.length,
                    itemBuilder: (ctx, index) {
                      return _itemOfUser(item[index]);
                    }))
          ],
        ),
      ),
    );
  }
}

Widget _itemOfUser(User user) {
  return Container(
    height: 90,
    child: Row(

      children: [
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              border: Border.all(width: 1.5, color: Colors.red)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22.5),
            child: Image(
              width: 45,
              height: 45,
              image: AssetImage("assets/images/instagram.png"),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.fullname,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3,),
            Text(
              user.email,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey
                    )
                  ),
                  child: Center(

                    child: Text("Follow"),
                  )
                )
              ],
            )
        )
      ],
    ),
  );
}
