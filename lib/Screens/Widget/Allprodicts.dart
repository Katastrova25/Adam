import 'package:flutter/material.dart';

class Allprodicts extends StatefulWidget {
  Allprodicts({super.key});

  @override
  State<Allprodicts> createState() => _AllprodictsState();
}

class _AllprodictsState extends State<Allprodicts> {
  final List<String> categories = [
    'All Products',
    'Ice Cream',
    'Cups',
    'Shake',
    'Sticks'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          // Assuming 'Ice Cream' is selected
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });

                },
                child: Chip(
                  label: Text(categories[index]),
                  backgroundColor:
                  selectedIndex == index ? Colors.deepPurple : Colors.grey.shade800,
                  labelStyle: const TextStyle(color: Colors.white),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                )),
          );
        },
      ),
    );
  }
}
