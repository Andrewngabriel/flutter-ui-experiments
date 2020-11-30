import 'package:flutter/material.dart';
import '../ui/customSliderThumbShape.dart';

class PlayerSlider extends StatefulWidget {
  @override
  _PlayerSliderState createState() => _PlayerSliderState();
}

class _PlayerSliderState extends State<PlayerSlider> {
  double trackPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 10),
            child: SliderTheme(
              data: SliderThemeData(
                overlayShape: RoundSliderOverlayShape(overlayRadius: 8.0),
                thumbShape: CustomSliderThumbShape(),
                trackHeight: 3,
              ),
              child: Slider(
                activeColor: Color(0xffFCFF6C),
                inactiveColor: Color(0xff434343),
                value: trackPosition,
                onChanged: (value) {
                  setState(() {
                    trackPosition = value;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1:04',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '3:27',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
