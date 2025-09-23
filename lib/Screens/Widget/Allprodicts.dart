import 'package:flutter/material.dart';

class Allprodicts extends StatelessWidget {
   Allprodicts({super.key});
  final List<String> categories = [
  'All Products', 'Ice Cream', 'Cups', 'Shake', 'Sticks'];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == 0; // Assuming 'Ice Cream' is selected
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor: isSelected ? Colors.deepPurple : Colors.grey.shade800,
              labelStyle: const TextStyle(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          );
        },
      ),
    );
  }
}
