import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/home/widgets/home_drawer.dart';
import 'package:quick_kick/features/home/widgets/home_promo_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  final List<Widget> pages = [
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: StringsManager.home),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: StringsManager.map),
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
      drawer: const HomeDrawer(),
      appBar: AppBar(
        backgroundColor: ColorsManager.transparentColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        surfaceTintColor: ColorsManager.transparentColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(PaddingManager.padding16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: HorizontalManager.horizontal12,
                ),
                child: Text(
                  StringsManager.welcomeBackHome,
                  style: TextStyle(color: ColorsManager.greyColor),
                ),
              ),
              Row(
                children: [
                  Text(
                    StringsManager.helloAhmed,
                    style: TextStyle(
                      fontSize: FontManager.fontSize20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: HeightManager.height16),
              HomePromoCard(onPressed: () {}),
              SizedBox(height: HeightManager.height16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringsManager.upcomingBooking,
                    style: TextStyle(
                      fontSize: FontManager.fontSize18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        StringsManager.viewAll,
                        style: TextStyle(color: ColorsManager.greyColor),
                      ),
                      SizedBox(width: WidthManager.width4),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: SizeManager.size16,
                        color: ColorsManager.greyColor,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
