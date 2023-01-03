import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grofast/utils/colors.dart';

class MySearchWidget extends StatefulWidget {
  final String hintName;
  final String prefixImage;
  final TextEditingController controller;

  const MySearchWidget({
    super.key,
    required this.hintName,
    required this.prefixImage,
    required this.controller,
  });

  @override
  State<MySearchWidget> createState() => _MySearchWidgetState();
}

class _MySearchWidgetState extends State<MySearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColors.c194B38.withOpacity(0.06),
      ),
      child: Center(
          child: Row(
        children: [
          SvgPicture.asset(widget.prefixImage, width: 25,),
          const SizedBox(width: 15),
          SizedBox(
            width: 190,
            child: TextFormField(
              controller: widget.controller,
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: InputDecoration(
                hintText: widget.hintName,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
