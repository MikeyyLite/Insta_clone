// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'chatpage.dart';

class ChatPage2 extends StatefulWidget {
  const ChatPage2({super.key});

  @override
  State<ChatPage2> createState() => _ChatPage2State();
}

class _ChatPage2State extends State<ChatPage2> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 50,
          backgroundColor: Colors.black38,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: SvgPicture.asset('assets/Back.svg'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatPage();
                    }));
                  });
            },
          ),
          centerTitle: true,
          title: GestureDetector(
            child: Row(
              children: [
                CircleAvatar(
                    radius: 15, backgroundImage: AssetImage('assets/cat.png')),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Text('_Zatana_'),
                ),
                Expanded(child: Container())
              ],
            ),
            onTap: () {},
          ),
        ),
        body: Column(children: [
          Expanded(
              child: Container(
            color: Colors.white,
          )),
          Container(
            color: Colors.black,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/Cameraicon.svg'),
                ),
                hintText: 'Message...',
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(width: 0)),
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_rounded),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]));
  }
}
