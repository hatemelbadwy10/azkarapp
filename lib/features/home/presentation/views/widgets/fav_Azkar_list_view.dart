import 'package:azkarapp/features/home/presentation/manger/fav_cubit/fav_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/fav_azkar_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavAzkarListView extends StatelessWidget {
  const FavAzkarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<FavCubit, FavState>(
        builder: (context, state) {
          if (state is GetAllFavListSuccess) {
            return ListView.builder(
                itemCount: BlocProvider.of<FavCubit>(context).allAzkar.length,
                itemBuilder: (context, index) {
                  return FavAzkarListViewItem(
                      allAzkarModel:
                          BlocProvider.of<FavCubit>(context).allAzkar[index]);
                });
          }
          else{
            return const Text('لا يوجد مفضله');
          }
        },
      ),
    );
  }
}
