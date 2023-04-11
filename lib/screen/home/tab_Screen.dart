
import 'package:flutter/material.dart';
import 'package:play_store/screen/home/view/home_screen.dart';

import '../top_Chart/view/top_schart.dart';

class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Search for apps & games",style: TextStyle(color: Colors.black),),
          leading: Icon(Icons.menu,color: Colors.black,),
          bottom: PreferredSize(

            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.green.shade700,
              labelColor: Colors.black,
              isScrollable: true,
              tabs: [
                Tab(text: "For you"),
                Tab(text: "Top Chart",),
                Tab(text: "Categories",),
                Tab(text: "Editor's choice",),


              ],
            ),
            preferredSize: Size.fromHeight(30),
          ),
          actions: [
            Icon(Icons.menu)
          ],
        ),
        body: TabBarView(
          children: [
            top(),
            top(),
            top(),
            top(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.keyboard), label: "Games",),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps",),
            BottomNavigationBarItem(icon: Icon(Icons.movie_outlined), label: 'Movies & TV',),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Books',),
          ],
          selectedItemColor: Colors.green.shade900,
          unselectedItemColor: Colors.black,
        ),
      ),
      ),
    );
  }
}