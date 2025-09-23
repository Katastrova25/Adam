import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pexels-myfoodie-2638026.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Text and Button
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: Column(
              children: [
                const Text('Was möchtest du heute zu essen?',style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                const Text('Lass uns eine Entscheidung treffen.',style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,),
                  onPressed: () {
                  Navigator.pushNamed(context,"s1");
                  },
                  child: const Text('GET START',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
