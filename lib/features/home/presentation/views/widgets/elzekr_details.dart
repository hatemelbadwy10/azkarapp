import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ElzekrDetails extends StatelessWidget {
  const ElzekrDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 104.h,
        width: 327.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primaryContainer
        ),
        child:  Directionality(

          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('  اصبحنا واصبح الملك  لله ولااله الى الله ولاحول ولا قوة اللى بالله العلي العظيم',
                  style: Styles.textStyle14,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
                const Spacer(),
                Padding(
                  padding:  EdgeInsets.only(right: 200.w),
                  child: Container(
                    height: 40.h,
                    width: 90.w,
                    decoration:  BoxDecoration(

                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).colorScheme.secondaryContainer
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Center(
                        child: Text(
                          'مره واحده',
                          style: Styles.textStyle14,)),
                  ),
                )

              ],
            ),
          ),
        ),

      ),
    );
  }
}
