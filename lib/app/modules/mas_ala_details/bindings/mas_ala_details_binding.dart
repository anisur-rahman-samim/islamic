import 'package:get/get.dart';

import '../controllers/mas_ala_details_controller.dart';

class MasAlaDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasAlaDetailsController>(
      () => MasAlaDetailsController(),
    );
  }
}
