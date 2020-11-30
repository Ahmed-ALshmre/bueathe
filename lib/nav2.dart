import 'package:flutter/material.dart';
import 'package:webviewinapp/screen/accont.dart';
import 'package:webviewinapp/screen/cart.dart';
import 'package:webviewinapp/screen/more.dart';
import 'package:webviewinapp/screen/navegtor.dart';

import 'model/home.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 2;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Acount(),
      Cart(),
      HomePage1(),
      More(),
      Nav(),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.notifications_on_outlined), label: 'عروض وبكدجات'),
      const BottomNavigationBarItem(icon: Icon(Icons.work_outline_outlined), label: 'السلة'),
      const BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'الرئيسة'),
      const BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: 'خدمات منزلية'),
      const BottomNavigationBarItem(icon: Icon(Icons.brush), label: 'منتجات التجميل'),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      elevation: 100,
      fixedColor: Colors.white,
      backgroundColor: Color(0xff087C59),
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return SafeArea(
      child: Scaffold(
        body: _kTabPages[_currentTabIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}