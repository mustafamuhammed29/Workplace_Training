import 'package:workplace_training/core/constant/routes.dart';
import 'package:workplace_training/view/screen/auth/forgetpassword.dart';
import 'package:workplace_training/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:workplace_training/view/screen/auth/resetpassword.dart';
import 'package:workplace_training/view/screen/auth/signup.dart';
import 'package:workplace_training/view/screen/auth/verifycode.dart';
import 'package:workplace_training/view/screen/onboarding.dart';


Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  // OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
};