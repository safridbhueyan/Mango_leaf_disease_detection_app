import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mango_leaf_disease/routes/route_names.dart';
import 'package:mango_leaf_disease/view/aboutUs_screen.dart';
import 'package:mango_leaf_disease/view/disease_screen.dart';
import 'package:mango_leaf_disease/view/home_screen.dart';
import 'package:mango_leaf_disease/view/login_screen.dart';
import 'package:mango_leaf_disease/view/sign_up_screen.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.LoginScreen,

    routes: [
      GoRoute(
        name: RouteName.SignUpScreen,
        path: RouteName.SignUpScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignUpScreen());
        },
      ),
      GoRoute(
        name: RouteName.LoginScreen,
        path: RouteName.LoginScreen,
        pageBuilder: (context, state) {
          return MaterialPage(child: LoginScreen());
        },
      ),
      GoRoute(
        name: RouteName.HomeScreen,
        path: RouteName.HomeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
      GoRoute(
        name: RouteName.DiseaseScreen,
        path: RouteName.DiseaseScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: DiseaseScreen());
        },
      ),
      GoRoute(
        name: RouteName.AboutusScreen,
        path: RouteName.AboutusScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: AboutusScreen());
        },
      ),
    ],
  );
}
