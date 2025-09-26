import 'package:adam/Screens/Widget/Allprodicts.dart';
import 'package:adam/Screens/widget2/Tocart.dart';
import 'package:adam/Screens/widget2/admaw.dart';
import 'package:adam/Screens/widget2/boxITEM.dart';
import 'package:adam/Screens/widget2/list_appbar.dart';
import 'package:flutter/material.dart';
import 'package:adam/Screens/widget2/Oreo.dart';

class list_screen extends StatelessWidget {
  const list_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2A2A2A),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              const list_appbar(),
              const SizedBox(
                height: 20,
              ),
              Allprodicts(),
              const SizedBox(
                height: 20,
              ),
              const Oreo(),
              const SizedBox(
                height: 20,
              ),


              const tocart()





            ],
          )),
        ));
  }
}
