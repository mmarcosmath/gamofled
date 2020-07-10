import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  final Function() changeScreen;

  Future<void> timeChange() async {
    await Future.delayed(Duration(seconds: 1), changeScreen);
  }

  InitialScreen({this.changeScreen});
  @override
  Widget build(BuildContext context) {
    timeChange();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
