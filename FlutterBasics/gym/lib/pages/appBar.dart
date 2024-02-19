import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "breakfast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
      elevation: 0.0,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            color: Color(0XffF7F8F8),
            borderRadius: BorderRadius.circular(10)),
      ),
      actions: [
        GestureDetector(
          
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/dots.svg'),
            height: 20,
            width: 37,
            decoration: BoxDecoration(
                color: Color(0XffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }

