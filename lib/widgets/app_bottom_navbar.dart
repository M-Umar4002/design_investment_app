import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int currentSelectedIndex = 0;
  List<Widget> _tabs = [HomeScreen(), Scaffold(), Scaffold(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 56,
        color: Color(0xffF6F6F9),
        child: BottomNavigationBar(
            currentIndex: currentSelectedIndex,
            selectedItemColor: Color(0xff31A05F),
            unselectedItemColor: Color(0xff999999),
            unselectedLabelStyle: GoogleFonts.catamaran(
                color: Color(0xff999999),
                fontWeight: FontWeight.w500,
                fontSize: 12),
            selectedLabelStyle: GoogleFonts.catamaran(
                color: Color(0xff31A05F),
                fontWeight: FontWeight.w500,
                fontSize: 12),
            type: BottomNavigationBarType.fixed,
            onTap: (int tappedIndex) {
              setState(() {
                currentSelectedIndex = tappedIndex;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Product'),
              BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows),
                label: 'Transaction',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account')
            ]),
      ),
      body: _tabs[currentSelectedIndex],
    );
  }
}
