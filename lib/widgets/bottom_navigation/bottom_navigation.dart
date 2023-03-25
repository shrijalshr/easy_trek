import 'package:easy_trek/widgets/bottom_navigation/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  double bottomNavBarHeight = 60;
  final CircularBottomNavigationController _navigationController = new CircularBottomNavigationController(0);
  final BottomNavigationController controller = Get.put(BottomNavigationController());

  List<TabItem> tabItems = List.of([
    TabItem(
      Icons.home,
      "Home",
      Colors.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.black54
      ),
      circleStrokeColor: Colors.black,

    ),
    TabItem(
      Icons.search,
      "Search",
      Colors.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.black54
      ),
      circleStrokeColor: Colors.black,

     
    ),
    TabItem(
      Icons.layers,
      "Reports",
      Colors.black,
      circleStrokeColor: Colors.black,
    ),
    TabItem(
      Icons.notifications,
      "Notifications",
      Colors.black,
      circleStrokeColor: Colors.black,
    ),
  ]);
  @override
  Widget build(BuildContext context) {
    return CircularBottomNavigation(
      tabItems,
      selectedPos: controller.position.value,
      barHeight: bottomNavBarHeight,
      controller: _navigationController,
      // use either barBackgroundColor or barBackgroundGradient to have a gradient on bar background
      barBackgroundColor: const Color.fromARGB(255,219, 227, 218),
      // barBackgroundGradient: LinearGradient(
      //   begin: Alignment.bottomCenter,
      //   end: Alignment.topCenter,
      //   colors: [
      //     Colors.blue,
      //     Colors.red,
      //   ],
      // ),
      backgroundBoxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        print(selectedPos);
        controller.setLocation(selectedPos??0);
      },
    );
  }

}