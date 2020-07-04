import 'package:flutter/material.dart';

import 'screens/gamofled.dart';

class Game extends StatelessWidget {
  const Game({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamofLed(),
    );
  }
}
