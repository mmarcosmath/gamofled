import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final List<Map<String, dynamic>> score;

  Score({this.score}) {
    score.sort((a, b) => a['point'] >= b['point'] ? a['point'] : b['point']);
  }

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Score",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
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
