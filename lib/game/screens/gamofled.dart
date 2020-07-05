import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/button_stop.dart';
import 'controllers/game_over_controller.dart';
import 'components/group_led.dart';
import 'models/init_list.dart';
import 'components/led.dart';
import 'package:vibration/vibration.dart';

class GamofLed extends StatefulWidget {
  @override
  _GamofLedState createState() => _GamofLedState();
}

class _GamofLedState extends State<GamofLed> {
  List<Led> list;
  String labelButton;
  int index = 1;
  List<Timer> timer = [];
  int mili = 500;
  int level = 1;

  _GamofLedState() {
    list = initList();

    labelButton = "START";
    start(Duration(milliseconds: mili));
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

  void timerCancel() {
    timer.forEach((time) => time.cancel());
  }

  void stopGame() {
    setState(() {
      timerCancel();

      labelButton = "STOP";
      start(Duration(milliseconds: mili));
    });
  }

  Future<void> buttonStop() async {
    timerCancel();
    for (Led e in list) {
      if (e.id == 1 && e.activate) {
        level++;
        Vibration.vibrate(duration: 500);
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
      await gameOver(context);
      level = 1;
      setState(() {
        labelButton = "START";
      });

      mili = 500;
    }
  }

  void start(Duration duration) {
    labelButton = "STOP";
    timerCancel();
    Timer.periodic(duration, (Timer t) {
      this.timer.add(t);
      list = initList();
      activateLed(nextLed());
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover,
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
