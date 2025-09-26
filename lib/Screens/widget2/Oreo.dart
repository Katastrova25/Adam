import 'package:adam/Screens/widget2/boxITEM.dart';
import 'package:flutter/material.dart';

class Oreo extends StatelessWidget {
  const Oreo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Stack(children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.asset(
            'images/pexels-magnostudio-13096192.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Positioned(
            top: 2,
            right: 10,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.send_and_archive_sharp,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            )),

      ]),
      SizedBox(
        height: 20,
      ),
      boxITEM(),
    ]);
  }
}
