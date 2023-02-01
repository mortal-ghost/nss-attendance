// ignore_for_file: unused_import, unnecessary_import, implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:gradient_textfield/gradient_textfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Center(
              child: Lottie.asset('Images/animation.json'),
            ),
            width: 270,
            height: 270,
          ),
          Container(
              margin: EdgeInsets.only(left: 40),
              child: Text(
                'Hello there ! Nice to meet you',
              )),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 35),
            child: Gradienttextfield(
              controller: email,
              radius: 20,
              height: 40,
              width: 250,
              colors: [Color(0xff374ABE), Color(0xff64B6FF)],
              text: "Enter Email",
              fontColor: Colors.white.withOpacity(0.9),
              fontSize: 10,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 35),
            child: Gradienttextfield(
              controller: email,
              radius: 20,
              height: 40,
              width: 250,
              colors: const [Colors.purple, Colors.red],
              text: "Enter Password",
              fontColor: Colors.white.withOpacity(0.9),
              fontSize: 10,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 148, 231, 225),
                  Color.fromARGB(255, 62, 182, 226)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            height: 50,
            width: 100,
            child: ElevatedButton(
              onPressed: null,
              child: Text(
                'Sign IN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
