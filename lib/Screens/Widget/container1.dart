import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  Container1({super.key});

  final products = [
    {
      'name': 'Waffle Cone',
      'price': '₹80.25',
      'image': 'https://via.placeholder.com/200x300.png?text=Waffle+Cone'
    },
    {
      'name': 'Coconut Cone',
      'price': '₹75.00',
      'image': 'https://via.placeholder.com/200x300.png?text=Coconut+Cone'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "s2");
              },
              child: Container(
                height: 280,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                        "images/pexels-sittisak-c-842235-1739347.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("PRICE"),
                          SizedBox(height: 4),
                          Text(
                            "pink vanilla",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "₹80.25",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
