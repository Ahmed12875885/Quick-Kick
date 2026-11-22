import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/home/model/calendar_booking_model.dart';
import 'package:quick_kick/features/home/widgets/home_booking_card.dart';
import 'package:quick_kick/features/home/widgets/home_promo_card.dart';
import 'package:quick_kick/features/home/widgets/stadium_cards.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    const booking = CalendarBookingModel(
      stadiumName: StringsManager.bookingStadiumAlNasrClub,
      bookingDateTime: StringsManager.bookingTodayAtEight,
      firstTeamName: StringsManager.bookingTeamA,
      secondTeamName: StringsManager.bookingTeamB,
      matchDuration: Duration(hours: 1),
      pitchNumber: 3,
      status: BookingStatus.paid,
    );

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
          HomeBookingCard(booking: booking),
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
          const StadiumCards(),
        ],
      ),
    );
  }
}
