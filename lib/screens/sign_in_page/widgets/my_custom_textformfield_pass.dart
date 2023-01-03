import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grofast/screens/sign_in_page/sign_in_page.dart';
import 'package:grofast/utils/colors.dart';
import 'package:grofast/utils/images.dart';

class MyTextFormFieldPassword extends StatefulWidget {
  final String name;
  final String errorname;
  final String hintName;
  final String prefixImage;
  final bool visiblity;
  final VoidCallback onTap;
  final TextEditingController controller;
  final bool errorvisiblity;

  const MyTextFormFieldPassword({
    super.key,
    required this.name,
    required this.errorname,
    required this.hintName,
    required this.prefixImage,
    required this.visiblity,
    required this.onTap,
    required this.controller,
    required this.errorvisiblity,
  });

  @override
  State<MyTextFormFieldPassword> createState() =>
      _MyTextFormFieldPasswordState();
}

class _MyTextFormFieldPasswordState extends State<MyTextFormFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.name,
            style: const TextStyle(
                color: MyColors.c9C9C9C,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColors.c194B38.withOpacity(0.06),
          ),
          child: Center(
            child: Row(
              children: [
                SvgPicture.asset(widget.prefixImage, width: 20),
                const SizedBox(width: 22),
                SizedBox(
                  width: 220,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: widget.visiblity,
                    controller: widget.controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return widget.errorname;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: widget.hintName,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    widget.onTap();
                  },
                  child: visiblity == false
                      ? SvgPicture.asset(MyImages.iconVisiblity, width: 19)
                      : SvgPicture.asset(MyImages.iconVisiblityOff, width: 19),
                )
              ],
            ),
          ),
        ),
        widget.errorvisiblity
            ? Text(widget.errorname,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w500))
            : const SizedBox(),
      ],
    );
  }
}
