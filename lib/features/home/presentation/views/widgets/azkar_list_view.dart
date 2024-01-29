import 'package:azkarapp/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
class AzkarListView extends StatelessWidget {
  const AzkarListView({super.key, required this.listViewItem});
  final Widget listViewItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            itemBuilder: (context,index){
              return listViewItem;


            }
            ),
      ),
    );
  }
}
