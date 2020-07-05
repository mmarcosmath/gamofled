import 'dart:async';

import 'package:flutter/material.dart';
import 'components/button_stop.dart';
import 'components/group_led.dart';
import 'components/led.dart';

class GamofLed extends StatefulWidget {
  @override
  _GamofLedState createState() => _GamofLedState();
}

class _GamofLedState extends State<GamofLed> {
  List<Led> list;
  String labelButton;
  int index = 1;
  Timer timer;
  int mili = 500;
  int level = 1;

  _GamofLedState() {
    initList();
  }

  void initList() {
    list = [
      Led(id: 5),
      Led(id: 6),
      Led(id: 7),
      Led(id: 4),
      Led(sized: true),
      Led(id: 8),
      Led(id: 3),
      Led(sized: true),
      Led(id: 9),
      Led(id: 2),
      Led(id: 1, primary: true, activate: true),
      Led(id: 10),
    ];
  }

  void activateLed(int led) {
    setState(() {
      for (Led e in list) {
        if (e.id == led) {
          e.activate = true;
        } else {
          e.activate = false;
        }
      }
    });
  }

  int nextLed() {
    index == 10 ? index = 1 : index++;
    return index;
  }

  void stopGame() {
    setState(() {
      timer.cancel();
      labelButton = "STOP";
      start(Duration(milliseconds: mili));
    });
  }

  void buttonStop() {
    for (Led e in list) {
      if (e.id == 1 && e.activate) {
        level++;
        mili <= 300 ? mili -= 10 : mili -= 25;
        stopGame();
        print(mili);
        print(level);
        return;
      }
    }
    if (level == 1) {
      mili = 500;
      stopGame();
    }
    if (level != 1) {
      print("GameOver");
      level = 1;
      setState(() {
        labelButton = "START";
      });

      mili = 500;
      timer.cancel();
    }
  }

  void start(Duration duration) {
    labelButton = "STOP";
    Timer.periodic(duration, (Timer timer) {
      this.timer = timer;
      initList();
      activateLed(nextLed());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initList();
    labelButton = "START";
    start(Duration(milliseconds: mili));
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
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 70,
                child: Center(
                  child: Text(
                    "Level $level",
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
              ButtonStop(label: labelButton, stop: buttonStop),
            ],
          ),
        ),
      ),
    );
  }
}
