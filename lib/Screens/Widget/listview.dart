import 'package:flutter/material.dart';



class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Flavours',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(

                  width: 130,

                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("images/pexels-teejay-1362534.jpg"),fit: BoxFit.cover,),


                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),


                ),

                )
              );
            },
          ),
        ),
      ],
    );
  }
}
