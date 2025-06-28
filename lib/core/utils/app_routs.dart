import 'package:booking_app/features/auth/bindings/auth_bindings.dart';
import 'package:booking_app/features/auth/presentation/views/auth_gate.dart';
import 'package:booking_app/features/auth/presentation/views/login_view.dart';
import 'package:booking_app/features/auth/presentation/views/register_view.dart';
import 'package:booking_app/features/home/bindings/home_bindings.dart';
import 'package:booking_app/features/home/presentation/views/details_view.dart';
import 'package:booking_app/features/home/presentation/views/home_view.dart';
import 'package:booking_app/features/home/presentation/views/view_all_view.dart';
import 'package:booking_app/features/start/presentation/views/start_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppRouts {
  static const startView = '/startView';
  static const homeView = '/homeView';
  static const detailsView = '/detailsView';
  static const viewAllView = '/viewAllView';
  static const loginView = '/loginView';
  static const authGate = '/';
  static const registerView = '/registerView';
  static List<GetPage<dynamic>> routs = [
    GetPage(name: startView, page: () => const StartView()),
    GetPage(name: detailsView, page: () => const DetailsView()),
    GetPage(
      name: homeView,
      page: () => HomeView(),
      transition: Transition.fadeIn,
      binding: HomeBindings(),
      curve: Curves.easeInOutCirc,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: viewAllView,
      page: () => const ViewAllView(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOutCirc,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: authGate,
      page: () => AuthGate(),
      transition: Transition.fadeIn,
      binding: AuthBindings(),
      curve: Curves.easeInOutCirc,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: loginView,
      page: () => const LoginView(),
      binding: AuthBindings(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOutCirc,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: registerView,
      page: () => const RegisterView(),
      binding: AuthBindings(),
      transition: Transition.leftToRightWithFade,
      curve: Curves.easeInOutCirc,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}
