import 'package:flutter/material.dart';
import 'components/button_stop.dart';
import 'components/group_led.dart';
import 'components/led.dart';

class GamofLed extends StatefulWidget {
  @override
  _GamofLedState createState() => _GamofLedState();
}

class _GamofLedState extends State<GamofLed> {
  List<Widget> list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      Led(id: 1),
      Led(id: 2),
      Led(id: 3),
      Led(id: 4),
      SizedBox(
        width: 50,
        height: 50,
      ),
      Led(id: 5),
      Led(id: 6),
      SizedBox(
        width: 50,
        height: 50,
      ),
      Led(id: 7),
      Led(id: 8),
      Led(id: 9, primary: true, activate: true),
      Led(id: 10),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            scale: 0.01,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              child: Center(
                child: Text(
                  "Level 1",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 1),
                        blurRadius: 2,
                        color: Colors.white12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GroupLed(
              groupList: list,
            ),
            ButtonStop(),
          ],
        ),
      ),
    );
  }
}
