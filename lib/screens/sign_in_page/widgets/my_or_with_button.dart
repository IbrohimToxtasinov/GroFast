import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grofast/utils/colors.dart';

class OrWithButton extends StatelessWidget {
  final String iconName;

  const OrWithButton({
    super.key,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColors.cF1F4F3,
      ),
      child: Center(
        child: SvgPicture.asset(iconName),
      ),
    );
  }
}
