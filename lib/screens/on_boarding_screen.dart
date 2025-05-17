import 'package:coffee_shop/screens/homescreen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 550,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/onboarding.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 460,
            child: Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 65,
            child: Text(
              "Fall in Love with \nCoffee in Blissful \nDelight!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontSize: 34,
              ),
            ),
          ),
          Positioned(
            top: 650,
            left: 65,
            child: Text(
              "Welcome to our cozy coffee corner, where\nevery cup is a delightful for you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 153, 153, 153),
                fontFamily: "Sora",
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: ElevatedButton(
          onPressed:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFC7794E),
            minimumSize: const Size(double.infinity, 65),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
          ),
          child: const Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Sora',
            ),
          ),
        ),
      ),
    );
  }
}
