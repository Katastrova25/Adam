import 'package:adam/Screens/widget2/FlavorItem.dart';
import 'package:flutter/material.dart';





class boxITEM extends StatelessWidget {
   boxITEM({super.key, });
  String selectedFlavor = 'Vanilla';

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Death By Oreo Icecream',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            'Death by Oreo is a colloquial descriptive or marketing term or various cakes and desserts that feature chocolate',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            FlavorItem(flavor: 'Vanilla', emoji: '🍦', isSelected: selectedFlavor == 'Vanilla', onTap: (){}),
                FlavorItem(flavor: 'Mix', emoji: '🌈', isSelected: selectedFlavor == 'Mix', onTap: (){}),
                FlavorItem(flavor: 'Mix', emoji: '🍫', isSelected: selectedFlavor == 'Choco', onTap: (){}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
