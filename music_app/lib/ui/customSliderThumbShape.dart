import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {
    assert(context != null);
    assert(center != null);

    final Canvas canvas = context.canvas;

    final Paint outerCirclePaint = Paint();
    outerCirclePaint.strokeWidth = 6;
    outerCirclePaint.style = PaintingStyle.stroke;
    outerCirclePaint.color = Color(0xffFCFF6C);

    final Paint innerCirclePaint = Paint();
    innerCirclePaint.style = PaintingStyle.fill;
    innerCirclePaint.color = Colors.black;

    canvas.drawCircle(center, 6, outerCirclePaint);
    canvas.drawCircle(center, 5, innerCirclePaint);
  }
}
