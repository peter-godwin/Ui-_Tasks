import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'onboardingscreen_state.dart';

class OnboardingscreenCubit extends Cubit<OnboardingscreenState> {
  OnboardingscreenCubit() : super(OnboardingscreenInitial());
}
