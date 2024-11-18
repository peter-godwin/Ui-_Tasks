import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:works_on/world_travel/onboarding_screen/onboardingscreen.dart';
import 'package:works_on/world_travel/onboarding_screen/onboardingscreen_cubit.dart';
import 'package:works_on/world_travel/pages/welcomePage/welcome_page.dart';
import 'package:works_on/world_travel/pages/welcomePage/welcome_page_cubit.dart';

GoRouter router() {
  return GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => WelcomePageCubit(),
          child: const WelcomePage(),
        );
      },
    ),
    GoRoute(
        path: '/onboarding_screen',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => OnboardingscreenCubit(),
            child: const OnboardingScreen(),
          );
        }),
  ]);
}
