import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/common/extensions.dart';
import '/features/auth/pages/sign_in.dart';
import '/features/auth/pages/sign_up.dart';
import '/features/home/pages/home_page.dart';

class AppRouteName {
  static const String home = "home";
  static const String signUp = "sign-up";
  static const String signIn = "sign-in";

}

class AppRoute {
  static GoRouter call() {
    return GoRouter(
        initialLocation: AppRouteName.signIn.path,
        // redirect: (context, state) {
        //   final currentPath = state.uri.path;
        //   bool isAuthPath = currentPath == AppRouteName.signIn.path ||
        //       currentPath == AppRouteName.signUp.path;
        //   if (isAuthPath) {
        //     return sl<AuthBloc>().state.maybeWhen(
        //         loaded: (_) => AppRouteName.home.rootPath,
        //         orElse: () => null);
        //   } else {
        //     return null;
        //   }
        // },
        // refreshListenable: BlocListenable(sl<AuthBloc>()),
        routes: [
          GoRoute(
            path: AppRouteName.home.rootPath,
            name: AppRouteName.home,
            pageBuilder: (context, state) {
              return _customPage(state, child: const HomePage());
            },
          ),

            GoRoute(
            path: AppRouteName.signUp.path,
            name: AppRouteName.signUp,
            pageBuilder: (context, state) {
              return _customPage(state, child: const SignUpPage());
            },
          ),

           GoRoute(
            path: AppRouteName.signIn.path,
            name: AppRouteName.signIn,
            pageBuilder: (context, state) {
              return _customPage(state, child: const SignInPage());
            },
          ),
         
        
          
        ]);
  }

  static Page<dynamic> _customPage(GoRouterState state,
      {required Widget child}) {
    return MaterialPage(key: state.pageKey, child: child);
  }
}