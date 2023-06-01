import 'package:flutter/material.dart';
import 'package:heart_guard/components/my_button.dart';
import 'package:heart_guard/components/my_textfield.dart';
import 'package:heart_guard/pages/main_page.dart';
import 'package:heart_guard/pages/register_page.dart';

class Login extends StatelessWidget {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void userSignIn(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MainPageScreen()));
  }

  void registerNewUser(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const RegisterPage()));
  }

  Login({super.key});

  //Controladores para los campos de textos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 200),
                      //Logo
                      Text("Bienvenido a la app de HeartGuard",
                          style: TextStyle(
                              color: Colors.red[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),

                      const SizedBox(height: 25),

                      //User field
                      MyTextField(
                        controller: userNameController,
                        hintText: "Ejemplo@gmail.com",
                        obscureText: false,
                      ),

                      const SizedBox(height: 25),

                      //Password
                      MyTextField(
                        controller: passwordController,
                        hintText: "Contraseña",
                        obscureText: true,
                      ),

                      const SizedBox(height: 35),

                      Row(
                        children: [
                          //Iniciar Sesion
                          MyButton(
                            onTap: () => userSignIn(context),
                          ),

                          //registrarse
                          SizedBox(
                            width: 170,
                            height: 70,
                            child:
                                ElevatedButton(onPressed:
                                    () => registerNewUser(context), style:
                                    ElevatedButton.styleFrom(backgroundColor:
                                        Colors.white, padding:
                                        const EdgeInsets.symmetric(vertical:
                                            20), shape:
                                        RoundedRectangleBorder(borderRadius:
                                            BorderRadius.circular(8))),
                                    child:
                                        const Center(child:
                                            Text("Registrarse", style:
                                                TextStyle(fontSize:
                                                    16, fontWeight:
                                                    FontWeight.bold, color:
                                                    Colors.black)))),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
