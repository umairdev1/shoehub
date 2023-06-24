import 'package:flutter/material.dart';
import 'package:shoehub/utilis/color.dart';
import 'package:shoehub/view/home_view/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text(
      'My Cart',
      style: optionStyle,
    ),
    Text(
      'Wishlist',
      style: optionStyle,
    ),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: _widgetOptions.elementAt(_selectedIndex)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: kblackClr),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: kblackClr,
                  type: BottomNavigationBarType.fixed,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_rounded),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag),
                      label: 'Business',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: 'Business',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'School',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: kprimaryClr,
                  unselectedItemColor: kwhiteClr,
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(50), color: kblackClr),
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      //       child: BottomNavigationBar(
      //         showSelectedLabels: false,
      //         showUnselectedLabels: false,
      //         backgroundColor: kblackClr,
      //         type: BottomNavigationBarType.fixed,
      //         items: const <BottomNavigationBarItem>[
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.home_rounded),
      //             label: 'Home',
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.shopping_bag),
      //             label: 'Business',
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.favorite),
      //             label: 'Business',
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.settings),
      //             label: 'School',
      //           ),
      //         ],
      //         currentIndex: _selectedIndex,
      //         selectedItemColor: kprimaryClr,
      //         unselectedItemColor: kwhiteClr,
      //         onTap: _onItemTapped,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
