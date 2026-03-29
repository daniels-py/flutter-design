import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 0, 0, 0),


    
      body: SafeArea( //evita el noch de celulares

        child: Padding(
          padding: const EdgeInsets.all(24.0),

          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Bienvenido',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)
              ),
              SizedBox(height: 40,),

              // aqui son los imputs
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 230, 230, 230),
                  hintText: "Correo electronico",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  
                ),
              ),
              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 230, 230, 230),
                  hintText: "Contraseña",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )              
                ),
              ),
              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color.fromARGB(255, 145, 123, 243),
                
                ),
                child:  Text( style: TextStyle(color: Colors.white), "Iniciar sesion" ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}