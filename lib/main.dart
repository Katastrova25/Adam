

import 'package:adam/Screens/catogery_itme.dart';
import 'package:adam/list_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/get_start.dart';

main() {
  runApp( const adam());
}

class adam extends StatelessWidget {
   const adam({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "s1": (context) => const CatogeryItme(),
        "s2": (context) => const list_screen(),
      },
      home: const Scaffold(
        body: GetStart(),
      ),



    );
  }
}
