
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column intro_screen_1() {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Image.asset('assets/image11.png')),
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Brows",
            style: TextStyle(
                color: Color(0xfffdc913),
                fontSize: 45,
                fontWeight: FontWeight.bold),
          ),
          Text(
              " App ",
              style: GoogleFonts.lato(textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),)
          ),
        ],
      ),
      Text(
          'and Order Now',
          style: GoogleFonts.lato(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        '     We have many recipes for you \n Go and select food what you want',
        style: GoogleFonts.lato(textStyle: TextStyle( fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 18)),
      ),
      SizedBox(height: 50,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 5,
            width: 15,
            color:Color(0xfffdc913),
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
            color:Colors.grey,
          ),
        ],
      ),
    ],
  );
}