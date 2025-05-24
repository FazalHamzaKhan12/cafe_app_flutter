import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 455,
            width: double.infinity,
            child: Image.network(
              "https://miro.medium.com/v2/resize:fit:480/1*7O1nYLptGFvSXCgqCJwc8A.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffEDEDED),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffEDEDED),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.gps_fixed),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 373),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Icon(Icons.drag_handle_outlined, size: 35),
                    SizedBox(height: 10),
                    Text(
                      "10 minutes left",
                      style: TextStyle(fontFamily: "Sora", fontSize: 17),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 130.0),
                      child: Row(
                        children: [
                          Text(
                            "Delivery to",
                            style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            " JI.Kpg Sutoyo",
                            style: TextStyle(fontFamily: "Sora", fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
