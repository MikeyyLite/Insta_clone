// ignore_for_file: unused_local_variable, unnecessary_import, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/screens/chatpage2.dart';
import 'package:insta_clone/screens/profilepage.dart';

Widget Chattile(BuildContext context, String Title, String Message) {
  var size = MediaQuery.of(context).size;
  var height = size.height;
  var width = size.width;
  return Card(
    color: Colors.black,
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage();
            }));
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.grey),
                borderRadius: BorderRadius.circular(200)),
            child: CircleAvatar(
              radius: height * 32 / 812,
              backgroundImage: AssetImage('assets/cat.png'),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChatPage2();
            }));
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 3),
                  child: Text('_Zatana_',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white))),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: width * 195 / 375,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 40 / 375,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        ' . 20m',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/Cameraicon.svg')),
      ],
    ),
  );
}
