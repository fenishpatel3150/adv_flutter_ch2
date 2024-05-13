
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column intro_screen_3() {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
              height: 300,
              width: 250,
              child: Image.asset('assets/image3.png'))),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "We Provide ",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold),

              )              ),
          Text(
              "Fast",
              style: GoogleFonts.lato(textStyle: TextStyle(
                  color: Color(0xfffdc913),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),)
          ),
        ],
      ),
      Text(
          'Food service',
          style: GoogleFonts.lato(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'We provide organic food service \n  our customer from Anywhere',
        style: GoogleFonts.lato(textStyle: TextStyle( fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 18)),
      ),
      SizedBox(height: 30,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 5,
            width: 15,
            color:Colors.grey,
          ),
          SizedBox(width: 15,),
          Container(
            height: 5,
            width: 15,
            color:Colors.grey,
          ),
          SizedBox(width: 15,),
          Container(
            height: 5,
            width: 15,
            color:Color(0xfffdc913),
          ),
        ],
      ),
    ],
  );
}