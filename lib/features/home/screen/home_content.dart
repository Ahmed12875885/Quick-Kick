import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/home/widgets/home_promo_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  fontWeight: FontManager.fontWeightBold,
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
                  fontWeight: FontManager.fontWeightBold,
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
          SizedBox(height: HeightManager.height16),
          Container(
            color: ColorsManager.amberColor,
            width: double.infinity,
            height: HeightManager.height120,
          ),
          SizedBox(height: HeightManager.height16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringsManager.popularNearYou,
                style: TextStyle(
                  fontSize: FontManager.fontSize18,
                  fontWeight: FontManager.fontWeightBold,
                ),
              ),
              Row(
                children: [
                  Text(
                    StringsManager.showAll,
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      
                      width: 162,
                      height: 170,
                      child: Column(children: [
                          ClipRRect(
                            borderRadius:BorderRadiusGeometry.directional(topStart: Radius.circular(12),topEnd: Radius.circular(12)),
                            child: Image(
                              fit: BoxFit.fitWidth,
                              image: AssetImage("assets/images/image5.png")),
                          ),
                          SizedBox(height: HeightManager.height8,),
                          Text(StringsManager.stadiumName1,style: TextStyle(fontSize: 12),),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            
                            width: 50,
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text("Pitch1"),
                            ))
                        ]
                        
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
