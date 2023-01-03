import 'package:flutter/material.dart';
import 'package:grofast/utils/colors.dart';
import 'package:grofast/utils/images.dart';
import 'package:grofast/utils/my_utils.dart';

class SliderWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const SliderWidget(
      {super.key,
        required this.title,
        required this.description,
        required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomClipath(),
          child: Container(
            width: double.infinity,
            height: 595,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:  AssetImage(image), fit: BoxFit.cover,
              )
            ),
          ),
        ),
        Positioned(
          top: 510,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: MyColors.c194B38, letterSpacing: 0.7),textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 19
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  description,
                  style: const TextStyle(
                      height: 1.5,
                      fontSize: 14,
                      color: MyColors.c9C9C9C,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.7),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
