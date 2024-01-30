import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/home_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo_impl.dart';
import 'api_services.dart';

abstract class AppRouter{
 // static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider(
          create: (context) => AllAzkarCubit(
              HomeRepoImpl(ApiServices(Dio()))
          ),
          child: const HomeView(

          ),
        ),
      ),
    ],
  );
}

