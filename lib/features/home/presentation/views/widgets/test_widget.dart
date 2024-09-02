import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text('تعالي نحرب',
          style: Styles.textStyle14.copyWith(
              //  color: Theme.of(context).colorScheme.primary
              )),
    );
  }
}
