import 'package:flutter/material.dart';

import 'custom_painter_example_widgets.dart';

class CustomPaintExample extends StatefulWidget {
  const CustomPaintExample({Key? key}) : super(key: key);

  @override
  _CustomPaintExampleState createState() => _CustomPaintExampleState();
}

class _CustomPaintExampleState extends State<CustomPaintExample> {
  double percentValue = 0.0;
  double newPercentage = 0.0;

  late double _height;
  late double _width;

  @override
  void initState() {
    super.initState();
    setState(() {
      percentValue = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent[200],
        title: const Text('Custom Painter '),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 4),
        child: Stack(
          children: <Widget>[
            CustomPainterExampleWidgets.buildShape(),
            CustomPainterExampleWidgets.buildButtonAnimation(
              height: _height / 2,
              width: _width / 2,
              percentValue: percentValue,
              onPress: () {},
            )
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
