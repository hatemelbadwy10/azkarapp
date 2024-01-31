import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCounterButton extends StatelessWidget {
  const CustomCounterButton({super.key, required this.buttonLabel, required this.textColor, required this.buttonColor});
final String buttonLabel;
final Color textColor;
final MaterialStateProperty<Color?> buttonColor;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:120.w,
      height:42.h,
      child: ElevatedButton(


      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),

      ),
          ),
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
      ),
    );
  }
}
