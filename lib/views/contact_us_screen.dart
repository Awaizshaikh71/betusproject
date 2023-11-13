import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF3D6CB2),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  if (!await launchUrlString("mailto:help@bonlinemobile.com")) {
                    throw Exception('Could not launch');
                  }
                },
                child: const Text(
                  "help@bonlinemobile.com",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
