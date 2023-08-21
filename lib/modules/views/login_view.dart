import 'package:ecom_firebase/register_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child:  Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60.0,
          ),
          const Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Icon(
                Icons.map_outlined,color: Colors.black,),
              Text("Keliene",style:TextStyle(color: Colors.black,fontFamily: "Roboto",fontSize: 20,fontWeight: FontWeight.w100))
            ],
          ),const SizedBox(height: 40.0,),
          const Text("Let's Login.",style: TextStyle(
            color: Colors.black,
            fontFamily: "Roboto",
            fontSize: 30.0,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.start,),
          const Text("Do you have an account?Login",
          style: TextStyle(color: Colors.black,
          fontFamily: "Roboto",
          fontSize: 15,
          fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.start,),

          const SizedBox(height: 20,),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            height: 50,
            decoration:  BoxDecoration(border: Border.all(color: Colors.green)),
            child: TextFormField(autofocus: false,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "First Name",
              contentPadding: EdgeInsets.all(10),
            ),
            )
            
          ),
           const SizedBox(height: 20,),
          
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            height: 50,
            decoration:  BoxDecoration(border: Border.all(color: Colors.green)),
            child: TextFormField(autofocus: false,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Last Name",
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
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterView()),
              );
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
        
                    ],
                  ),
                ),
              );
            

  }
}
  