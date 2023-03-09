// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:konusamayanlar_app/view/auth/create/view/add_new_story_view.dart';
import 'package:konusamayanlar_app/view/auth/create/view/sign_up_view.dart';
import 'package:konusamayanlar_app/view/auth/login/view/login_help_view.dart';
import 'package:konusamayanlar_app/view/auth/login/view/login_page_view.dart';
import 'package:konusamayanlar_app/view/auth/login/view/sign_in_view.dart';
import 'package:konusamayanlar_app/view/auth/splash/view/splash_view.dart';
import 'package:konusamayanlar_app/view/home/leaderboard/view/leader_board_winner.dart';
import 'package:konusamayanlar_app/view/home/mainpage/view/main_page_view.dart';

import 'route_constant.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.splash,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SplashScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.login,
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginPageView(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.signIn,
        path: '/signIn',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SignInView(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.singUp,
        path: '/signUp',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SingUpView(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.home,
        path: '/mainPage',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: MainPageView(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.forgotPass,
        path: '/forgotPass',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginHelpView(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.addNewStory,
        path: '/addNewStory',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AddNewStoryView(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.winner,
        path: '/winner',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LeaderBoardWinner(),
          );
        },
      ),
    ],
    redirect: (context, state) {
      bool isAuthenticated = false;
      if (!isAuthenticated && state.subloc == '/') {
        return state.namedLocation(RouteConstants.splash);
      }
      return null;
    },
  );
}
