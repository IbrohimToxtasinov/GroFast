import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyUtils {
  static getMyToast({required String message}) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_RIGHT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey.shade300,
      textColor: Colors.black,
      fontSize: 16.0,
    );
  }
}

class CustomClipath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final Path path = Path();

    path.lineTo(0, h-120);
    path.quadraticBezierTo(w*0.5, h-180, w, h-120);
    path.lineTo(w, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
