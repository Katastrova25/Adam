import 'package:adam/Screens/Widget/Allprodicts.dart';
import 'package:adam/Screens/Widget/Search.dart';
import 'package:adam/Screens/Widget/container1.dart';
import 'package:adam/Screens/Widget/firstAppbar.dart';
import 'package:adam/Screens/Widget/listview.dart';
import 'package:adam/Screens/Widget/navagtor.dart';

import 'package:flutter/material.dart';

class CatogeryItme extends StatelessWidget {
  const CatogeryItme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A2A2A),
      bottomNavigationBar: const Navagtor(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
        
            const Firstappbar1(),
            const SizedBox(
              height: 15,
            ),
            const Firstappbar(),
            const SizedBox(
              height: 20,
            ),
            Allprodicts(),
            const SizedBox(
              height: 20,),
            Container1(),
            const SizedBox(height: 50,),
            const Listview(),
        
        
        
        
        
        
        
        
          ],
        
            ),
      ))
    ;}}



    
