import 'package:azkarapp/core/utils/styles.dart';
import 'package:azkarapp/features/home/presentation/views/azkar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AzkarListViewItem extends StatelessWidget {
  const AzkarListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AzkarView()),
        );

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          height: 42.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.primaryContainer
          ),

          child:  Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text('اذكار الصباح',style: Styles.textStyle14,),
              )),

        ),
      ),
    );
  }
}
