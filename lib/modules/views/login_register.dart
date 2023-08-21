// ignore: unused_import
import 'package:ecom_firebase/register_view.dart';
import 'package:flutter/material.dart';

import 'login_view.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 60.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.map_outlined,
                color: Colors.black,
              ),
              Text("Keliene",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w100))
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          const Text(
            "The Right Address \n  For Shopping \n Anyday",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Roboto",
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Its is now very easy to reach \n the best quality among all",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Roboto",
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 50,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(225, 9, 86, 150)),
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            height: 40,
            decoration:
                const BoxDecoration(color: Color.fromARGB(224, 198, 209, 218)),
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
