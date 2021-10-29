import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/pages/my_feed_page.dart';
import 'package:instagramclone/pages/my_like_page.dart';
import 'package:instagramclone/pages/my_profil_page.dart';
import 'package:instagramclone/pages/my_search_page.dart';
import 'package:instagramclone/pages/my_upload_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home _page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pagecontroller;
  int currentTab=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pagecontroller=PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pagecontroller,
        children: [
          MyFeedPage(pagecontroller:_pagecontroller),
          MySearchPage(),
          MyUploadPage(pagecontroller2:_pagecontroller),
          MyLikePage(),
          MyProfilePage(),
        ],
        onPageChanged: (int i){
          setState(() {
            currentTab=i;//bu yoda agar swipe qilganda pastdigi iconlar ham o'zgaradi
          });
        },

      ),bottomNavigationBar: CupertinoTabBar(
      onTap: (int i){
        setState(() {
          currentTab=i;
          _pagecontroller!.animateToPage(i, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
        });
      },
      currentIndex: currentTab,
      activeColor: Color.fromRGBO(193, 53, 132, 1),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,size: 32,)),
        BottomNavigationBarItem(icon: Icon(Icons.search,size: 32,)),
        BottomNavigationBarItem(icon: Icon(Icons.add_box,size: 32,)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,size: 32,)),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle,size: 32,)),
      ],
    ),
    );
  }
}
