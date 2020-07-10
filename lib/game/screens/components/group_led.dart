import 'package:flutter/material.dart';

import 'led.dart';

class GroupLed extends StatelessWidget {
  final List<Led> groupList;
  GroupLed({this.groupList});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          key: UniqueKey(),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: groupList.sublist(0, 3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: groupList.sublist(3, 6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: groupList.sublist(6, 9),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: groupList.sublist(9, 12),
            ),
          ],
        ),
      ),
    );
  }
}
