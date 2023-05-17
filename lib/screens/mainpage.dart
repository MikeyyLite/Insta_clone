import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/screens/chatpage.dart';
import 'package:insta_clone/screens/searchpage.dart';
import 'package:insta_clone/widgets/post.dart';
import 'package:insta_clone/screens/profilepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0x121212),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: SvgPicture.asset('assets/Cameraicon.svg'),
                onPressed: () {});
          },
        ),
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/instalogo.svg',
          height: 32,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/IGTV.svg'),
            onPressed: () {},
          ),
          IconButton(
              icon: SvgPicture.asset('assets/messageicon.svg'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChatPage();
                }));
              }),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 92 / 812,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('assets/cat.png'),
                    ),
                    height: height * 10 / 812,
                    width: width * 80 / 375,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 578 / 812,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black,
                  height: height * 576 / 812,
                  width: width,
                  child: post(),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // <-- HERE
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
