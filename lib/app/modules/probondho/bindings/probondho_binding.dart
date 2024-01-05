import 'package:get/get.dart';

import '../controllers/probondho_controller.dart';

class ProbondhoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProbondhoController>(
      () => ProbondhoController(),
    );
  }
}
