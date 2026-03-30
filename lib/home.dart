import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 128, 237, 245),
    
     body: Column(
      
      children: [
        
        Container(


          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 140, 68, 255).withOpacity(1.0),
            borderRadius: BorderRadius.circular(20),
            border:  Border.all(color: Colors.blueAccent.withOpacity(0.1)),
          ),
          

          child: const Text('Home'),

        )
        
        
      ],

     ),

    );
  }
}