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
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomClipath(),
            child: Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage(image), fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: MyColors.c090F47, letterSpacing: 0.7),textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    description,
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: MyColors.c090F47.withOpacity(0.45),
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.7),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
