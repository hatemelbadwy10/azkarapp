import 'package:azkarapp/features/bottom_nav_bar/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/bottom_nav_bar/presentation/manger/nav_bar_cubit/navbar_cubit.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      /*  GoRoute(
        path: AppRouter.kHomeView,
        builder: (context, state) => BlocProvider(
          create: (context) => AllAzkarCubit(
              HomeRepoImpl(ApiServices(Dio()))
          ),
          child: const HomeView(

          ),
        ),
      ),*/
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider(
            create: (context) => NavbarCubit(),
            child: const BottomNavBarBody()),
      )
    ],
  );
}
