import 'dart:math';

import 'package:betusproject/views/consts/list.dart';
import 'package:betusproject/views/contact_us_screen.dart';
import 'package:betusproject/views/privacy_policy_screen.dart';
import 'package:betusproject/views/terms_of_use_screen.dart';
import 'package:betusproject/views/widgets/stats.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final rng = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D6CB2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF3D6CB2),
              ),
              child: Center(
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
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text(
                "Home",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactUsScreen(),
                  ),
                );
              },
              title: const Text(
                "Contact Us",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyScreen(),
                  ),
                );
              },
              title: const Text(
                "Privacy Policy",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsOfUseScreen(),
                  ),
                );
              },
              title: const Text(
                "Terms of use",
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Center(
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
          const SizedBox(
            height: 60,
          ),
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'NFL Winners',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _controller.previousPage();
                            },
                            child: const Icon(
                              Icons.chevron_left,
                              size: 30,
                            ),
                          ),
                          Flexible(
                            child: CarouselSlider(
                              carouselController: _controller,
                              options: CarouselOptions(
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                },
                              ),
                              items: ncf.map((item) {
                                return Stats(
                                  item: item,
                                );
                              }).toList(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _controller.nextPage();
                            },
                            child: const Icon(
                              Icons.chevron_right,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: ncf.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 4.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                  _current == entry.key ? 0.9 : 0.4,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
