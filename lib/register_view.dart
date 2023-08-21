import 'package:flutter/material.dart';

import 'modules/views/login_view.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
       
        children: [
          const SizedBox(
            height: 60.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.map_outlined,color: Colors.black,),
              Text("Keliene",style:TextStyle(color: Colors.black,fontFamily: "Roboto",fontSize: 20,fontWeight: FontWeight.w100))
            ],
          ),const SizedBox(height: 40.0,),
          const Text("Let's Register.",style: TextStyle(
            color: Colors.black,
            fontFamily: "Roboto",
            fontSize: 30.0,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,),
          const Text("Do you have an account?Login",
          style: TextStyle(color: Colors.black,
          fontFamily: "Roboto",
          fontSize: 15,
          fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,),

          const SizedBox(height: 20,),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            height: 50,
            decoration:BoxDecoration(border: Border.all(color: Colors.green)), 
            child: TextFormField(autofocus: false,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText:"First Name",
              contentPadding: EdgeInsets.all(10),
            ),
            )
            
          ),
           const SizedBox(height: 20,),
          
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            height: 50,
            decoration: BoxDecoration(border: Border.all(color: Colors.green)),
            child: TextFormField(autofocus: false,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText:"Last Name",
              contentPadding: EdgeInsets.all(10),
            ),
            )
             
          ),
        const SizedBox(height: 20,),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.green)),
          child: TextFormField(
            autofocus: false,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Email",
              contentPadding: EdgeInsets.all(10),
            ),
          ),
         ),

         const SizedBox(height: 20,),
         const SizedBox(height: 40,), 

         GestureDetector(
          onTap: () { Navigator.pop(context);
            },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blueAccent),
              alignment: Alignment.center,
              child: const Text("Register",
              style:TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
             textAlign: TextAlign.center, 
              ),
              
            ),
          ),
         ),
         const SizedBox(height: 20,),
         GestureDetector(
          onTap: (){
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
          },
           child: Container(
            width: double.infinity,height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shape: const BeveledRectangleBorder(borderRadius:BorderRadius.all(Radius.zero)),
                  child: Container(
                    width: 150,
                    decoration: const BoxDecoration(color: Color.fromARGB(255, 149, 142, 142)),
                    height: 50,
                    alignment: Alignment.center,
                    child: const Row(
                      children: [
                        SizedBox(width: 10,),
                        Image(image: AssetImage("assets/images/facebook.png"),width: 20,),
                        SizedBox(width: 10,),
                        Text("Facebook")
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                Card(
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                  child: Container(
                    width: 150,
                     decoration: const BoxDecoration(color: Color.fromARGB(255, 149, 142, 142)),
                    height: 50,
                    alignment: Alignment.center,
                    child: const Row(
                      children: [
                        SizedBox(width: 15,),
                        Image(image: AssetImage('assets/images/gmail.png'),width: 20,),
                        SizedBox(width: 10,),
                        Text("Gmail")
                      ],
                    ),
                  ),
                )
              ],
            ),
           ),
         )
        ],

      ),
      ),
    );
  }
}