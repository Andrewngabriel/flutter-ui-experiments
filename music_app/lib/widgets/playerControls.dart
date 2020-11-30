import 'package:flutter/material.dart';

class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.shuffle,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: () {},
          padding: EdgeInsets.all(0),
        ),
        IconButton(
          icon: Icon(
            Icons.fast_rewind,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
          padding: EdgeInsets.all(0),
        ),
        MaterialButton(
          child: Icon(
            Icons.play_arrow,
            size: 45,
          ),
          onPressed: () {},
          padding: EdgeInsets.all(15),
          color: Color(0xffFCFF6C),
          shape: CircleBorder(),
          elevation: 0,
        ),
        IconButton(
          icon: Icon(
            Icons.fast_forward,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
          padding: EdgeInsets.all(0),
        ),
        IconButton(
          icon: Icon(
            Icons.repeat,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: () {},
          padding: EdgeInsets.all(0),
        ),
      ],
    );
  }
}
