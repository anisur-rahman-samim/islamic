import 'package:get/get.dart';

import '../controllers/masyala_controller.dart';

class MasyalaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasyalaController>(
      () => MasyalaController(),
    );
  }
}
