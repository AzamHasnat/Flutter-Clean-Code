import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/color/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final double height;
  const RoundButton({super.key, this.height = 40 ,required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: AbsorbPointer(
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
