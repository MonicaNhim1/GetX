import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0.obs();
  increment() {
    counter++;
    update();
  }

  decrement() {
    counter--;
    update();
  }
}
