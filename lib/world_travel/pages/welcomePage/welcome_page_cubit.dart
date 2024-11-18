import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:works_on/world_travel/config/router/nav.dart';

part 'welcome_page_state.dart';

class WelcomePageCubit extends Cubit<WelcomePageState> {
  final int _delaySeconds = 5;

  WelcomePageCubit() : super(WelcomePageInitial()) {
    _delayPage();
  }

  void _delayPage() async {
    var duration = Duration(seconds: _delaySeconds);
    await Future.delayed(duration);
    emit(WelcomePageLoaded());
  }

  void toOnboardingScreen(BuildContext context) {
    GoRouter.of(context).go(Uri(path: "/${Nav.OnboardingScreen}").toString());
  }
}
