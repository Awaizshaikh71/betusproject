import 'package:betusproject/views/HomeScreen.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({
    super.key,
    this.data,
  });

  final dynamic data;

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  void initState() {
    print(widget.data["team_one_total_scores"].length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D6CB2),
        // Add a leading widget for the back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Define the action you want to take when the back button is pressed
            Navigator.of(context).pop(HomeScreen());
          },
        ),
        title: Text('ScoreBoard'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.data["team_one_logo"],
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(widget.data["team_two_logo"],
                    width: 50, height: 50),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'SUPER BOWLS', // Add your text here
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 105, 105, 105)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.data["team_one"], // Add your first heading text here
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                Text(
                  '38',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )
              ],
            ),

            // SizedBox(
            //   height: 1,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.data["team_two"], // Add your second heading text here
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 105, 105, 105)),
                ),
                Text(
                  '35',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 105, 105, 105)),
                )
              ],
            ),

            SizedBox(
              height: 5,
            ),
            Text(
              "FINAL ${widget.data["data"]}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 105, 105, 105)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Cheif's are Super Bowl Champions. Butker converts game- Winning FG for Chiefs with 8 sec left",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color.fromARGB(255, 105, 105, 105)),
            ),
            SizedBox(
              height: 150,
            ),

            Table(
              border: TableBorder.all(color: Colors.transparent),
              children: [
                TableRow(
                  children: [
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(
                        child: Center(
                            child: Text(
                      ' 1 ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 105, 105, 105)),
                    ))),
                    TableCell(
                        child: Center(
                            child: Text(
                      ' 2 ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 105, 105, 105)),
                    ))),
                    TableCell(
                        child: Center(
                            child: Text(
                      ' 3 ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 105, 105, 105)),
                    ))),
                    TableCell(
                        child: Center(
                            child: Text(
                      ' 4 ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 105, 105, 105)),
                    ))),
                    TableCell(
                        child: Center(
                            child: Text(
                      '  T  ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ))),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                        child: Center(
                            child: Text(
                      widget.data["team_short_nm1"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ))),
                    for (int x = 0;
                        x < widget.data["team_one_total_scores"].length;
                        x++) ...[
                      TableCell(
                          child: Center(
                              child: Text(
                        widget.data["team_one_total_scores"][x].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ))),
                    ],
                    TableCell(
                        child: Center(
                            child: Text(
                      widget.data["team_one_score"].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ))),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                        child: Center(
                            child: Text(
                      widget.data["team_short_nm2"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ))),
                    for (int x = 0;
                        x < widget.data["team_one_total_scores"].length;
                        x++) ...[
                      TableCell(
                          child: Center(
                              child: Text(
                        widget.data["team_two_total_scores"][x].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ))),
                    ],
                    TableCell(
                        child: Center(
                            child: Text(
                      widget.data["team_two_score"].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
