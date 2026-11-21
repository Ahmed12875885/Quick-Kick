import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/images_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';
import 'package:quick_kick/features/home/model/calendar_booking_model.dart';
import 'package:quick_kick/features/home/widgets/home_promo_card.dart';

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
          Container(
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
                            borderRadius: BorderRadius.circular(
                              SizeManager.size10,
                            ),
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
                                color: ColorsManager
                                    .bookingPaidStatusBackgroundColor,
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
            padding: const EdgeInsets.symmetric(
              vertical: VerticalManager.vertical16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.secondaryColor,
                    borderRadius: BorderRadius.circular(SizeManager.size12),
                  ),
                  width: WidthManager.width162,
                  height: HeightManager.height170,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.directional(
                            topStart: Radius.circular(SizeManager.size12),
                            topEnd: Radius.circular(SizeManager.size12),
                          ),
                          child: Image(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(ImagesManager.image5),
                          ),
                        ),
                      ),
                      SizedBox(height: HeightManager.height8),
                      Text(
                        StringsManager.stadiumName1,
                        style: const TextStyle(
                          fontSize: FontManager.fontSize12,
                        ),
                      ),
                      SizedBox(height: HeightManager.height8),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorsManager.primaryColor,
                          borderRadius: BorderRadius.circular(
                            SizeManager.size12,
                          ),
                        ),
                        width: WidthManager.width50,
                        height: HeightManager.height30,
                        child: Padding(
                          padding: const EdgeInsets.all(
                            PaddingManager.padding4,
                          ),
                          child: const Text(StringsManager.stadiumPitch1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.secondaryColor,
                    borderRadius: BorderRadius.circular(SizeManager.size12),
                  ),
                  width: WidthManager.width162,
                  height: HeightManager.height170,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.directional(
                            topStart: Radius.circular(SizeManager.size12),
                            topEnd: Radius.circular(SizeManager.size12),
                          ),
                          child: Image(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(ImagesManager.image5),
                          ),
                        ),
                      ),
                      SizedBox(height: HeightManager.height8),
                      Text(
                        StringsManager.stadiumName1,
                        style: const TextStyle(
                          fontSize: FontManager.fontSize12,
                        ),
                      ),
                      SizedBox(height: HeightManager.height8),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorsManager.primaryColor,
                          borderRadius: BorderRadius.circular(
                            SizeManager.size12,
                          ),
                        ),
                        width: WidthManager.width50,
                        height: HeightManager.height30,
                        child: Padding(
                          padding: const EdgeInsets.all(
                            PaddingManager.padding4,
                          ),
                          child: const Text(StringsManager.stadiumPitch2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
