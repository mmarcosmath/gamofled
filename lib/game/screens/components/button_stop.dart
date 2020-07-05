import 'package:flutter/material.dart';

class ButtonStop extends StatelessWidget {
  final String label;
  final Function() stop;
  ButtonStop({this.label, this.stop});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: stop,
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xFF786DEF),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 10,
              color: Color(0xFFDBD3D3),
            ),
          ],
          border: Border.all(
            color: Color(0xFFDBD3D3),
            width: 5,
          ),
        ),
        child: Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 40,
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
    );
  }
}
