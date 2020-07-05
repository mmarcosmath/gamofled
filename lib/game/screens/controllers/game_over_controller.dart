import 'package:flutter/material.dart';

Future<void> gameOver(context) async {
  await showDialog(
    context: context,
    child: SimpleDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.all(0),
        children: [
          Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(
            //       'assets/images/background.png',
            //     ),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            color: Colors.transparent,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "GAMEOVER",
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
          ),
        ]),
  );
}
