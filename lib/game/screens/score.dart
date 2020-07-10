import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final List<Map<String, dynamic>> score;

  Score({this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                child: Center(
                  child: Text(
                    "Score",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: score.length,
                  itemBuilder: (BuildContext context, int index) {
                    var scr = score[index];
                    return Card(
                      child: ListTile(
                        title: Text(scr["name"]),
                        trailing: Text('${scr["point"]}'),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
