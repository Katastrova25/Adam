import 'package:flutter/material.dart';



class Firstappbar1 extends StatelessWidget {
  const Firstappbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'AdamCream',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: const Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
