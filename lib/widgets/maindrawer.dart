import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0, left: 20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "_mikeyy_writes_",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  //textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          tileColor: Colors.lightGreen,
          onTap: () {},
          leading: SvgPicture.asset(
            'assets/archive.svg',
          ),
          title: Text(
            "Archive",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset('assets/activity.svg'),
          title: Text(
            "Activity",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset('assets/nametag.svg'),
          title: Text(
            "Nametag",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset('assets/saved.svg'),
          title: Text(
            "Saved",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset('assets/closefriends.svg'),
          title: Text(
            "Close Friends",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset('assets/discover.svg'),
          title: Text(
            "Discover People",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    );
  }
}
