// ignore_for_file: unused_import, unused_element, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta_clone/widgets/searchposts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/screens/mainpage.dart';
import 'package:insta_clone/screens/profilepage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0),
                  borderRadius: BorderRadius.circular(20)),
              filled: true,
              fillColor: Colors.grey[850],
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              hintText: 'Search',
              isDense: true,
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0))),
        ),
      ),
      body: buildPosts(),
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
