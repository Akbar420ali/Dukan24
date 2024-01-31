import 'package:get/get.dart';
import 'package:login_signup/app/modules/Checkout/controllers/check_controller.dart';


class checkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<checkController>(
          () => checkController(),
    );
  }
}
