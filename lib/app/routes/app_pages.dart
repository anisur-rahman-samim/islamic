import 'package:get/get.dart';

import '../modules/contact_us/bindings/contact_us_binding.dart';
import '../modules/contact_us/views/contact_us_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mas_ala_details/bindings/mas_ala_details_binding.dart';
import '../modules/mas_ala_details/views/mas_ala_details_view.dart';
import '../modules/masyala/bindings/masyala_binding.dart';
import '../modules/masyala/views/masyala_view.dart';
import '../modules/probondho/bindings/probondho_binding.dart';
import '../modules/probondho/views/probondho_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => const ContactUsView(),
      binding: ContactUsBinding(),
    ),
    GetPage(
      name: _Paths.MAS_ALA_DETAILS,
      page: () => const MasAlaDetailsView(),
      binding: MasAlaDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MASYALA,
      page: () => const MasyalaView(),
      binding: MasyalaBinding(),
    ),
    GetPage(
      name: _Paths.PROBONDHO,
      page: () => const ProbondhoView(),
      binding: ProbondhoBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
