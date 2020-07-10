import 'package:flutter/material.dart';
import '../score.dart';

class CustomPopupMenu extends StatelessWidget {
  final List<Map<String, dynamic>> listScore = [
    <String, dynamic>{"name": "marcos", "point": 22},
    <String, dynamic>{"name": "marcos", "point": 17},
    <String, dynamic>{"name": "marcos", "point": 8},
    <String, dynamic>{"name": "marcos", "point": 23},
  ];
  List<PopupMenuEntry<dynamic>> _itemBuilder(context) {
    var list = List<PopupMenuEntry<Object>>();
    list.add(
      PopupMenuItem(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Score(score: listScore);
              },
            ),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.score,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                "Score",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      tooltip: "Menu",
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ),
      ),
      color: Color(0xFF786DEF),
      itemBuilder: _itemBuilder,
      icon: Icon(
        Icons.more_vert,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
