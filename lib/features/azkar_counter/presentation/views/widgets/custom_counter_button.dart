import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
class CustomCounterButton extends StatelessWidget {
  const CustomCounterButton({super.key, required this.buttonLabel, required this.textColor, required this.buttonColor});
final String buttonLabel;
final Color textColor;
final MaterialStateProperty<Color?> buttonColor;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
    style: ButtonStyle(
  backgroundColor: buttonColor
),
        onPressed: (){

        },
        child: Text(

          buttonLabel,
          style: Styles.textStyle14.copyWith(
            color: textColor,
          ),
        )
    );
  }
}
