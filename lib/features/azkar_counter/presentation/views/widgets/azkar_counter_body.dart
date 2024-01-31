import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';
import 'azkar_counter_app_bar.dart';
import 'counter_shape.dart';
import 'custom_counter_button.dart';
class AzkarCounterBody extends StatelessWidget {
  const AzkarCounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const AzkarCounterAppBar(),
          SizedBox(
            height: 184.h,
          ),
          const CounterShape(),
           SizedBox(height: 24.h,),
          const CustomCounterButton(buttonLabel: 'تسبيح', textColor: Colors.white, buttonColor:MaterialStatePropertyAll(KDarkModeContainerColor)),
           SizedBox(height: 16.h,),
          const CustomCounterButton(buttonLabel: 'اعادة', textColor:KDarkModeContainerColor, buttonColor:MaterialStatePropertyAll(Colors.white))



        ],
      ),
    );
  }
}
