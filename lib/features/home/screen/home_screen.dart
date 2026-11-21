import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/features/home/screen/calendar_screen.dart';
import 'package:quick_kick/features/home/screen/home_content.dart';
import 'package:quick_kick/features/home/screen/map_screen.dart';
import 'package:quick_kick/features/home/screen/notifications_screen.dart';
import 'package:quick_kick/features/home/widgets/home_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  List<Widget> pages = [
    HomeContent(),
    MapScreen(),
    NotificationsScreen(),
    CalendarScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: selectedindex != 0,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.primaryColor,
        selectedItemColor: ColorsManager.secondaryColor,
        unselectedItemColor: ColorsManager.blackColor,
        selectedFontSize: FontManager.fontSize18,
        unselectedFontSize: FontManager.fontSize14,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: StringsManager.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: StringsManager.map,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: StringsManager.notify,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: StringsManager.calendar,
          ),
        ],
      ),
      
      drawer: selectedindex == 0 ? const HomeDrawer() : null,
      appBar: AppBar(
        backgroundColor: ColorsManager.transparentColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        surfaceTintColor: ColorsManager.transparentColor,
      ),
      body: selectedindex == 1
          ? pages.elementAt(selectedindex)
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: HorizontalManager.horizontal16),
              child: pages.elementAt(selectedindex),
            ),
    );
  }
}
