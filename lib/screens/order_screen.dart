import 'package:coffee_shop/screens/dilvery_screen.dart';
import 'package:flutter/material.dart';
import '../models/coffee_model.dart';

class OrderScreen extends StatefulWidget {
  final Coffee coffees;

  const OrderScreen({super.key, required this.coffees});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int selectedOption = 0;
  double devliveryFee = 2.0;

  static int counter = 1;

  incrementTap() {
    setState(() {
      counter++;
    });
  }

  decrementTap() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        backgroundColor: Color(0xffEDEDED),
        centerTitle: true,
        title: Text("Order", style: TextStyle(fontFamily: "Sora")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              selectedOption == 0
                                  ? Color(0xffC67C4E)
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Deliver",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  selectedOption == 0
                                      ? Colors.white
                                      : Colors.black,
                              fontFamily: "Sora",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              selectedOption == 1
                                  ? Color(0xffC67C4E)
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Pick Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  selectedOption == 1
                                      ? Colors.white
                                      : Colors.black,
                              fontFamily: "Sora",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text(
              "Delivery Address",
              style: TextStyle(fontFamily: "Sora", fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 315.0),
            child: Text(
              "J1. Kpg Sutoyo",
              style: TextStyle(fontFamily: "Sora", fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 130.0),
            child: Text(
              "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black38),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 13),
                        Icon(Icons.edit_document, size: 18),
                        Text("Edit Address"),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black38),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 13),
                        Icon(Icons.notes, size: 18),
                        Text("Add Notes"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Divider(thickness: 2, color: Colors.black12),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  // Coffee Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      widget.coffees.image,
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Coffee name & subtitle
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.coffees.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sora",
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          widget.coffees.subtitle ?? 'Deep Foam',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontFamily: "Sora",
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Quantity controller
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: decrementTap,
                            icon: Icon(Icons.remove, size: 15),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text("$counter", style: TextStyle(fontSize: 16)),
                      const SizedBox(width: 8),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: incrementTap,
                            icon: const Icon(Icons.add, size: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  SizedBox(width: 18),
                  Icon(Icons.discount_outlined, color: Color(0xffC67C4E)),
                  SizedBox(width: 15),

                  Text(
                    "1 Discount is Applies",
                    style: TextStyle(fontFamily: "Sora"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140.0),
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text(
              "Payment Summary",
              style: TextStyle(fontFamily: "Sora", fontSize: 17),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 25),
              Text("Price", style: TextStyle(fontFamily: "Sora")),
              SizedBox(width: 320),
              Text("\$${widget.coffees.price * counter}"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 25),
              Text("Delivery Fee", style: TextStyle(fontFamily: "Sora")),
              SizedBox(width: 262),
              Text("\$${devliveryFee}", style: TextStyle(fontFamily: "Sora")),
            ],
          ),
          SizedBox(height: 24),
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),

                Row(
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.wallet, color: Color(0xffC67C4E), size: 28),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          "Cash/Wallet",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Sora",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 55.0),
                          child: Text(
                            "\$${(widget.coffees.price * counter + devliveryFee).toStringAsFixed(2)}",
                            style: TextStyle(
                              color: Color(0xffC67C4E),
                              fontFamily: "Sora",
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 230),
                    Icon(Icons.keyboard_arrow_down, size: 30),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC67C4E),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 180,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeliveryScreen(),
                        ),
                      ),
                  child: const Text(
                    "Order",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Sora",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
