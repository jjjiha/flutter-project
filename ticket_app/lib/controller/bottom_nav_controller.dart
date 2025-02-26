import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // rx int
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    print('my index is $index');
    selectedIndex.value = index;
  }
}
