import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //estilo por defecto de los botones
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

    );

    return Scaffold(

    
      //fondo de mi pantalla temporalmente
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      //componete fijo predefino por defecto
      // hace que el cuerpo ignore el espacio del Appbar
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //title: const Text('mi proyecto'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: () => print('Boton superior'),
            style: buttonStyle,  
          ),
          const SizedBox(width: 30,)

        ],
      ),

      

      
      // cuerpo de mi home
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 140, 68, 255).withOpacity(1.0),
                borderRadius: BorderRadius.circular(20),
                border:  Border.all(color: Colors.blueAccent.withOpacity(0.1)),
              ),
              child: const Center(
                child: Icon(Icons.dashboard_outlined, size: 50, color: Color.fromARGB(255, 255, 255, 255),),
              ),
            ),
          ],
        ),
      ),

      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: buttonStyle,
        onPressed: () => print('inferior'),
        child: const Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Text('inferior'),
        ),

      ),
    );
  }
}