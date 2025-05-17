import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xffEDEDED),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black54.withOpacity(0.8),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 340, top: 25),
                          child: Text(
                            "Location",
                            style: TextStyle(
                              color: const Color.fromARGB(183, 139, 139, 139),
                              fontFamily: "Sora",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 235, top: 8),
                          child: Text(
                            "Bilzen, Tanjungbalai",
                            style: TextStyle(
                              color: const Color.fromARGB(183, 219, 219, 219),
                              fontFamily: "Sora",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
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
