import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/images_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/home/model/calendar_booking_model.dart';

class HomeBookingCard extends StatelessWidget {
  const HomeBookingCard({super.key, required this.booking});

  final CalendarBookingModel booking;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HeightManager.height120,
      decoration: BoxDecoration(
        color: ColorsManager.secondaryColor,
        borderRadius: BorderRadius.circular(SizeManager.size10),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.cardShadowColor,
            blurRadius: SizeManager.size10,
            offset: const Offset(
              HorizontalManager.horizontal0,
              VerticalManager.vertical2,
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: HorizontalManager.horizontal16,
        vertical: VerticalManager.vertical8,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  booking.stadiumName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorsManager.blackColor,
                    fontSize: FontManager.fontSize14,
                    fontWeight: FontManager.fontWeightBold,
                  ),
                ),
                const SizedBox(height: VerticalManager.vertical2),
                Text(
                  booking.bookingDateTime,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize14,
                  ),
                ),
                const SizedBox(height: VerticalManager.vertical2),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: booking.firstTeamName),
                      TextSpan(
                        text: StringsManager.bookingVersus,
                        style: TextStyle(color: ColorsManager.greyColor),
                      ),
                      TextSpan(text: booking.secondTeamName),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: ColorsManager.blackColor,
                    fontSize: FontManager.fontSize14,
                  ),
                ),
                const SizedBox(height: VerticalManager.vertical2),
                Text(
                  '${booking.matchDuration.inHours} '
                  '${StringsManager.bookingHour}'
                  '${StringsManager.bookingPitchSeparator}'
                  '${StringsManager.bookingPitch} ${booking.pitchNumber}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize10,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: HorizontalManager.horizontal8),
          SizedBox(
            width: WidthManager.width100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  booking.bookingDateTime,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize10,
                  ),
                ),
                const SizedBox(height: VerticalManager.vertical2),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(SizeManager.size10),
                      child: Image.asset(
                        ImagesManager.image5,
                        width: WidthManager.width100,
                        height: HeightManager.height50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: HorizontalManager.horizontal4,
                      bottom: VerticalManager.vertical2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: HorizontalManager.horizontal8,
                          vertical: VerticalManager.vertical2,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsManager.bookingPaidStatusBackgroundColor,
                          borderRadius: BorderRadius.circular(
                            SizeManager.size15,
                          ),
                        ),
                        child: const Text(
                          StringsManager.bookingPaid,
                          style: TextStyle(
                            color: ColorsManager.thredColor,
                            fontSize: FontManager.fontSize10,
                          ),
                        ),
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
