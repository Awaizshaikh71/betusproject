import 'package:betusproject/views/scoreScreen.dart';
import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({super.key, this.item});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ScoreScreen(
              data: item,
            ),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
        ),
        width: double.infinity,
        //match detail container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                item["data"],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 185, 185, 185),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0.7,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item["team_one_logo"],
                            width: 80,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            item["team_one"],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 2.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      item["time"],
                      style: const TextStyle(
                        color: Colors.grey, // Border color
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item["team_two_logo"],
                            width: 80,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            item["team_two"],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
