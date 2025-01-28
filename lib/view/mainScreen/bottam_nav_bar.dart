import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottamNavBarr extends StatelessWidget {
  const BottamNavBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext context, int newIndex, _) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.amber,
            elevation: 0,
            backgroundColor: Colors.white,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.conveyor_belt), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          );
        });
  }
}
