import 'package:workplace_training/core/constant/routes.dart';
import 'package:workplace_training/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:workplace_training/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login() ,
  AppRoute.onBoarding: (context) => const OnBoarding() ,
};