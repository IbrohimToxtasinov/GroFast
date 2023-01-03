import 'package:flutter/cupertino.dart';
import 'package:grofast/utils/colors.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  const MyButton({
    super.key,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [MyColors.c26AD71, MyColors.c32CB4B])),
      child: Center(
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: MyColors.cFFFFFF,
          ),
        ),
      ),
    );
  }
}
