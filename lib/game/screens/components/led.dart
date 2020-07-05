import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Led extends StatefulWidget {
  int id;
  bool activate;
  bool primary;
  bool sized;
  Led({
    this.id = -1,
    this.activate = false,
    this.primary = false,
    this.sized = false,
  });

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "$activate";
  }

  @override
  _LedState createState() => _LedState();
}

class _LedState extends State<Led> {
  @override
  Widget build(BuildContext context) {
    return widget.sized
        ? SizedBox(
            width: 50,
            height: 50,
          )
        : Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: widget.activate ? Color(0xFFFF0000) : Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 10,
                  color: Color(0xFFDBD3D3),
                ),
              ],
              border: Border.all(
                color: widget.primary ? Color(0xFF00FF29) : Color(0xFF8C8C8C),
                width: 5,
              ),
            ),
          );
  }
}
