import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'profilePic': Icons.person,
      'name': 'Cliff Hanger',
      'location': 'El Dorado',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Cordoba Mini Guitar',
      'price': '₹ 25,000',
      'make': 'Cordoba',
      'year': '2020',
    },
    {
      'profilePic': Icons.person,
      'name': 'Frank N. Stein',
      'location': 'Shangri La',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Another Guitar',
      'price': '₹ 20,000',
      'make': 'Fender',
      'year': '2021',
    },
     {
      'profilePic': Icons.person,
      'name': 'Frank N. Stein',
      'location': 'Shangri La',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Another Guitar',
      'price': '₹ 20,000',
      'make': 'Fender',
      'year': '2021',
    },
     {
      'profilePic': Icons.person,
      'name': 'Frank N. Stein',
      'location': 'Shangri La',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Another Guitar',
      'price': '₹ 20,000',
      'make': 'Fender',
      'year': '2021',
    },
     {
      'profilePic': Icons.person,
      'name': 'Frank N. Stein',
      'location': 'Shangri La',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Another Guitar',
      'price': '₹ 20,000',
      'make': 'Fender',
      'year': '2021',
    },
     {
      'profilePic': Icons.person,
      'name': 'Frank N. Stein',
      'location': 'Shangri La',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Another Guitar',
      'price': '₹ 20,000',
      'make': 'Fender',
      'year': '2021',
    },
   {
      'profilePic': Icons.person,
      'name': 'Frank N. Stein',
      'location': 'Shangri La',
      'image': 'assets/3_Tradebooks-922752db04177f3417c8505ff1970f9d88be19f966cff7ce4654bd85c5073ac3.png',
      'title': 'Another Guitar',
      'price': '₹ 20,000',
      'make': 'Fender',
      'year': '2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
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
                fillColor: const Color(0xFFDEDEDE),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilterChip(
                label: const Text('Books',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
                onSelected: (bool selected) {}, // Provide an empty callback
              ),
              FilterChip(
                label: const Text('Game',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
                onSelected: (bool selected) {}, // Provide an empty callback
              ),
             FilterChip(
                label: const Text('Music',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
                onSelected: (bool selected) {}, // Provide an empty callback
              ),
              FilterChip(
                label: const Text('Camera',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
                onSelected: (bool selected) {}, // Provide an empty callback
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(item['profilePic'] as IconData),
                        ),
                        title: Text(item['name']),
                        subtitle: Text(item['location']),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ),
                      Image.network(item['image']),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'],
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text('Make: ${item['make']} | Year: ${item['year']}'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item['price'],
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
