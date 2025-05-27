import 'package:coffee_shop/screens/home/coffee_list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'All Coffee',
    'Macchiato',
    'Latte',
    'Americano',
    'Cappuccino',
  ];

  int selectedIndex = 0;

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
                        SizedBox(height: 30),
                        buildSearchSection(),
                      ],
                    ),
                  ),
                  SizedBox(height: 95),
                  buildScrollForCoffee(),
                  SizedBox(height: 20),
                  Expanded(child: CoffeeListScreen()),
                ],
              ),
            ),
            buildPromoCard(),
          ],
        ),
      ),
    );
  }

  SizedBox buildScrollForCoffee() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xffC67C4E) : Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  if (isSelected)
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                ],
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Row buildSearchSection() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 17),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                  hintText: 'Search coffee',
                  hintStyle: const TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xffC67C4E),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(Icons.tune, color: Colors.white, size: 28),
          ),
        ),
      ],
    );
  }

  Padding buildPromoCard() {
    return Padding(
      padding: EdgeInsets.only(top: 180),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xffC67C4E),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/images/promo_coffee.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 25,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Promo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sora",
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                bottom: 15,
                child: Text(
                  'Buy one get\none FREE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sora",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
