import 'package:betusproject/views/consts/list.dart';
import 'package:betusproject/views/scoreScreen.dart';
import 'package:betusproject/views/widgets/stats.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Initial selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D6CB2),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu_rounded),
            Text('BETUS'),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: StrokeText(
                text: "BETUS",
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                strokeColor: Colors.white,
                strokeWidth: 1,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
                itemBuilder: (context, index) {
                  var item = imageList[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedIndex == index
                            ? Colors.white
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 150,
                      height: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(item["path"]!, width: 20, height: 20),
                          Text(
                            item["name"]!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'FIXTURES',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (_selectedIndex == 0)
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ncf.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = ncf[index];

                        return Stats(
                          item: item,
                        );
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_month),
      //       label: 'Fixtures',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.schedule),
      //       label: 'Result',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //       ),
      //       label: 'Odd',
      //     ),
      //   ],
      //   // currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.blue, // Customize the selected item color
      //   onTap: (int index) {
      //     setState(() {
      //       // _selectedIndex = index;
      //     });
      //     if (index == 2) {
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context) => ScoreScreen()));
      //       // } else if (index == 1) {
      //       //   Navigator.push(context,
      //       //       MaterialPageRoute(builder: (context) => ScoreScreen()));
      //       // } else if (index == 2) {
      //       //   Navigator.push(context,
      //       //       MaterialPageRoute(builder: (context) => ScoreScreen()));
      //     }
      //   },
      // ),
    );
  }
}
