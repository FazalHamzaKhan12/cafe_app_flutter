import 'package:coffee_shop/data/coffee_data.dart';
import 'package:coffee_shop/screens/order/order_screen.dart';
import 'package:flutter/material.dart';
import '../models/coffee_model.dart';

class CoffeeDetailScreen extends StatefulWidget {
  final Coffee coffee;

  const CoffeeDetailScreen({super.key, required this.coffee});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  bool isFavorite = false;

  final List<String> sizes = ['S', 'M', 'L'];
  int selectedSizeIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: Text("Detail", style: TextStyle(fontFamily: "Sora")),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                widget.coffee.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              widget.coffee.name,
              style: const TextStyle(
                fontFamily: "Sora",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 2),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            child: Row(
              children: [
                Text(widget.coffee.type, style: TextStyle(color: Colors.grey)),
                const SizedBox(width: 240),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffEDEDED),
                  ),
                  child: Icon(
                    Icons.delivery_dining_outlined,
                    color: Color(0xffC67C4E),
                    size: 28,
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffEDEDED),
                  ),
                  child: Icon(
                    Icons.foundation_sharp,
                    color: Color(0xffC67C4E),
                    size: 28,
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffEDEDED),
                  ),
                  child: Icon(
                    Icons.fastfood_outlined,
                    color: Color(0xffC67C4E),
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                Text(
                  '${widget.coffee.rating} (1234)',
                  style: TextStyle(fontSize: 14, fontFamily: "Sora"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Divider(thickness: 1, color: Colors.grey.shade300),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              "Description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.coffee.description ?? "No description available.",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              "Size",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: Center(
              child: Row(
                children:
                    widget.coffee.sizes.asMap().entries.map((entry) {
                      int index = entry.key;
                      String size = entry.value;
                      bool isSelected = index == selectedSizeIndex;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSizeIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 12),
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? const Color.fromARGB(129, 199, 112, 58)
                                    : Colors.transparent,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              size,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),

          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade200, blurRadius: 20),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Sora",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "\$${widget.coffee.price.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC67C4E),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC67C4E),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 18,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrderScreen(coffees: widget.coffee,)),
                      ),
                  child: const Text(
                    "Buy Now",
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
