// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/screens/mainpage.dart';
import 'package:insta_clone/screens/searchpage.dart';
import 'package:insta_clone/widgets/maindrawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      return Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SearchPage();
      }));
    }
    if (_selectedIndex == 0) {
      return Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MainPage();
      }));
    }
    if (_selectedIndex == 4) {
      return Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ProfilePage();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: MainDrawer(),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: SvgPicture.asset(
                'assets/lockicon.svg',
                height: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 5, 0, 12),
              child: Text('mikeyy_writes'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 0, 0, 6),
              child: SvgPicture.asset(
                'assets/Shape (1).svg',
                height: 10,
              ),
            ),
            // Expanded(child: Container()),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
            //   child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            // )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/download.png'),
                      ),
                      height: height * 96 / 812,
                      width: width * 96 / 375,
                    ),
                  )),
              Container(
                height: height * 96 / 812,
                width: width * 259 / 375,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '54',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '834',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '162',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mikeyy',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Running away is easy\n',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        TextSpan(
                          text: 'its the leaving thats hard',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                width: width - 32,
                height: height * 35 / 812,
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    border: Border.all(width: 0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 92 / 812,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/download.png'),
                      ),
                      height: height * 10 / 812,
                      width: width * 80 / 375,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: SvgPicture.asset('assets/grid.svg'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: SvgPicture.asset('assets/Tags.svg'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
              itemBuilder: (BuildContext context, int index) {
                return Image.asset('assets/todoroki.png');
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/homeicon.svg'),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/search.svg'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/newpost.svg'),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Reels.svg', height: 26),
            label: 'Chats2',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 12.5,
                backgroundImage: AssetImage('assets/download.png')),
            label: 'Chats3',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
