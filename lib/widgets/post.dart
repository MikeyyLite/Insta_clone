// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_svg/flutter_svg.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: height * 54 / 812,
          width: width,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                    radius: 16, backgroundImage: AssetImage('assets/cat.png')),
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'mikeyy_writes',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    'Pilani,Rajasthan',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              )),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: height * 375 / 812,
          child: Image(image: AssetImage('assets/SunsetinTokyo.png')),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('assets/Like.svg')),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('assets/Comment.svg')),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/messageicon.svg')),
            Expanded(child: Container()),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset('assets/Shape.svg')),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(3.0),
              child: CircleAvatar(
                  radius: 10, backgroundImage: AssetImage('assets/cat.png')),
            ),
            Text(
              'Liked by ',
              style: TextStyle(color: Colors.white),
            ),
            GestureDetector(
              onTap: () {},
              child: Text('mikeyy_writes ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
            Text('and ', style: TextStyle(color: Colors.white)),
            GestureDetector(
              onTap: () {},
              child: Text(
                '69 others ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                'mikeyy_writes ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'View all 42 comments ',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}
