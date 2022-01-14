import 'package:get/get.dart';

class Controller extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  bool get isEmpty => count.value == 0;
  bool get isFull => count.value == 20;

  void snackIncrement(){
    if (isFull) {
     null;
     Get.snackbar('Lotado', 'A capacidade máxima é de 20 pessoas');
   }else{
     increment();
   }
  }
}