import 'dart:async';

import 'package:app5/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Splassscreen extends StatefulWidget {
  const Splassscreen({super.key});

  @override
  State<Splassscreen> createState() => _SplassscreenState();
}

class _SplassscreenState extends State<Splassscreen> {

  StarTimer() async{
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StarTimer();
  }
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/recipe_logo.png",height: 200,width: 200,),
              SizedBox(height: 10,),
              Text("Recipe App",style: GoogleFonts.abel(
                color: Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              CircularProgressIndicator(color: Colors.redAccent,)
            ],
          ),
        ),
      ),
    );
  }
}
