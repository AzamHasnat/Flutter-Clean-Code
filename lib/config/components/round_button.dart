import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/color/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const RoundButton({super.key,required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: const BoxDecoration(
          color: AppColors.buttonColor
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
