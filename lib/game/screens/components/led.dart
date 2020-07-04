import 'package:flutter/material.dart';

class Led extends StatelessWidget {
  final int id;
  final bool activate;
  final bool primary;

  Led({this.id, this.activate = false, this.primary = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: activate ? Color(0xFFFF0000) : Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            color: Color(0xFFDBD3D3),
          ),
        ],
        border: Border.all(
          color: primary ? Color(0xFF00FF29) : Color(0xFF8C8C8C),
          width: 5,
        ),
      ),
    );
  }
}
