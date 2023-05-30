
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
           children: [
            const SizedBox(height: 50),
            //Logo
            const Icon(
              Icons.lock,
              size: 80,
            ),
            const SizedBox(height: 50),
            Text(
              "Bienvenido!",
              style: TextStyle(
                color: Colors.red[300],
                fontSize: 16,
              )
            ),

            const SizedBox(height: 25),

            //User field
            

            //Iniciar Sesión
              
            //registrarse
              
            //forgot password
              
           ],
          ),
        ),
      )
    );
  }
}

