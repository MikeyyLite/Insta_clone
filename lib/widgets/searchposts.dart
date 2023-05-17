import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

// final _lightColors = [
//   Colors.amber.shade300,
//   Colors.lightGreen.shade300,
//   Colors.lightBlue.shade300,
//   Colors.orange.shade300,
//   Colors.pinkAccent.shade100,
//   Colors.tealAccent.shade100
// ];

final _image_list = [
  Image.asset('assets/image3.png'),
  Image.asset('assets/imag2.png'),
  Image.asset('assets/image1.png'),
  Image.asset('assets/cat.png'),
  Image.asset('assets/todoroki.png'),
  Image.asset('assets/download.png'),
];

class PostCardWidget extends StatelessWidget {
  PostCardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    /// Pick colors from the accent colors based on index
    final color = Colors.black;

    // final minHeight = getMinHeight(index);
    // print('------------------------------------------');
    // print(index);
    // print(index % 6);
    return Card(
      color: color,
      child: Container(
          // constraints: BoxConstraints(minHeight: minHeight),

          child: image(index)),
    );
  }

  // /// To return different height for different widgets
  // double getMinHeight(int index) {
  //   switch (index % 4) {
  //     case 0:
  //       return 100;
  //     case 1:
  //       return 150;
  //     case 2:
  //       return 150;
  //     case 3:
  //       return 100;
  //     default:
  //       return 100;
  //   }
  // }

  Image image(int index) {
    switch (index % 6) {
      case 0:
        return _image_list[0];
      case 1:
        return _image_list[1];
      case 2:
        return _image_list[2];
      case 3:
        return _image_list[3];
      case 4:
        return _image_list[4];
      case 5:
        return _image_list[5];

      default:
        return _image_list[0];
    }
  }
}

Widget buildPosts() => StaggeredGridView.countBuilder(
      padding: EdgeInsets.all(8),
      itemCount: 50,
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      crossAxisCount: 6,
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {},
          child: PostCardWidget(index: index),
        );
      },
    );
