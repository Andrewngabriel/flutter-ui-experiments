import 'package:flutter/material.dart';

class SongCover extends StatelessWidget {
  final String imageURL;
  final String name;

  SongCover({
    @required this.imageURL,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 172,
          child: Stack(
            children: [
              ClipRRect(
                child: Image.network(
                  this.imageURL,
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              Positioned(
                bottom: 0,
                right: 5,
                child: MaterialButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(5),
                  shape: CircleBorder(),
                  minWidth: 20,
                  child: Icon(
                    Icons.play_arrow,
                    size: 25,
                    color: Colors.white,
                  ),
                  color: Colors.grey[700],
                  elevation: 0,
                ),
              )
            ],
          ),
        ),
        // SizedBox(height: 10),
        Text(
          this.name,
          style: TextStyle(
            fontSize: 17,
            color: Color(0xffECECEC),
          ),
        ),
      ],
    );
  }
}
