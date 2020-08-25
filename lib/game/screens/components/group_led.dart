import 'package:flutter/material.dart';

import 'led.dart';

class GroupLed extends StatelessWidget {
  final Map<int,Led> groupList;
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
              children: [groupList[1],groupList[2],groupList[3],],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [groupList[4],groupList[5],groupList[6],],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [groupList[7],groupList[8],groupList[9],],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [groupList[10],groupList[11],groupList[12],],
            ),
          ],
        ),
      ),
    );
  }
}
