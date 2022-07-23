import 'package:flutter/material.dart';

import 'clipper.dart';
import 'newpaint.dart';

class CustomPainterExampleWidgets {
  static Widget buildShape() {
    return ClipPath(
      clipper: CustomShapeClass(),
      child: Container(
        color: Colors.green.withOpacity(0.7),
      ),
    );
  }

  static Widget buildButtonAnimation(
      {required double height,
      required double width,
      required double percentValue,
      @required Function? onPress}) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 60),
        height: height,
        width: width,
        child: CustomPaint(
          foregroundPainter: ButtonPainter(
              buttonBorderColor: Colors.grey,
              progressColor: Colors.red,
              percentage: percentValue,
              width: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Colors.cyanAccent,
              splashColor: Colors.tealAccent,
              shape: const CircleBorder(),
              child: Text(
                "Press\n  ${percentValue.toInt()}%",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
