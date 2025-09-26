import 'package:flutter/material.dart';

class list_appbar extends StatelessWidget {
  const list_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Oreo",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
          Icon(Icons.search,color: Colors.white,size: 35,)
        ]
      ),
    );
  }
}
