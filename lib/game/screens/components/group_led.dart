import 'package:flutter/material.dart';

class GroupLed extends StatelessWidget {
  final List<Widget> groupList;
  GroupLed({@required this.groupList});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [...groupList.sublist(0, 3)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [...groupList.sublist(3, 6)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [...groupList.sublist(6, 9)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [...groupList.sublist(9, 12)],
            ),
          ],
        ),
      ),
    );
  }
}
