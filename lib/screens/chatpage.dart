// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/screens/mainpage.dart';
import 'package:insta_clone/widgets/chattile.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0x121212),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: SvgPicture.asset('assets/Back.svg'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                });
          },
        ),
        centerTitle: true,
        title: GestureDetector(
          child: Text('mikeyy_writes'),
          onTap: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/Add Chat.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 0)),
                  filled: true,
                  fillColor: Colors.grey[850],
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
          ),
          SizedBox(
            height: height * 596 / 812,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black,
                  height: height * 72 / 812,
                  width: width,
                  child: Container(
                    child: Chattile(context, 'title', 'title'),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey[850],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/camerablue.svg'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Camera',
                    style: TextStyle(
                        color: Color.fromARGB(250, 56, 151, 240), fontSize: 15),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
