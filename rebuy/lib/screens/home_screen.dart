import 'package:flutter/material.dart';
import 'package:rebuy/models/card.dart';
import 'package:rebuy/models/product_tile.dart';
import 'package:rebuy/screens/restaurant_scree.dart';
import 'package:rebuy/styles/colors.dart';
import 'package:rebuy/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Sample data for the items
  final List<Map<String, String>> items = [
    {
      'name': 'Product 1',
      'price': '₹899',
      'image': 'assets/Product Thumbnail.png'
    },
    {
      'name': 'Product 2',
      'price': '₹1299',
      'image': 'assets/Product Thumbnail.png'
    },
    {
      'name': 'Product 3',
      'price': '₹599',
      'image': 'assets/Product Thumbnail.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/User image.png"),
            ),
            SizedBox(width: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey Alice",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for books, guitar and more...",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color(0xFFDEDEDE),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dynamicTitleText(
                    text: 'New Arrivals',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                  dynamicTitleText(
                    text: 'View more',
                    fontSize: 12,
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Horizontal scroll for product items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20), // Fixed padding issue here
              child: Row(
                children: items.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item['image']!),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          item['name']!,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item['price']!,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dynamicTitleText(
                    text: 'Fastest Near You',
                    fontSize: 25,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
     const  SizedBox(height: 20),
      // Horizontal scroll for product items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20), // Fixed padding issue here
              child: Row(
                children: items.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item['image']!),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          item['name']!,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item['price']!,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 25),

               Padding(
               padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  dynamicTitleText(
                    text: 'New Arrivals',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                  dynamicTitleText(
                    text: 'View more',
                    fontSize: 12,
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
             // Horizontal scroll for product items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20), // Fixed padding issue here
              child: Row(
                children: items.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item['image']!),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          item['name']!,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item['price']!,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 25),
          
       ]
       ) 
       ),
      );
      
    
  }
}
