import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/features/home/model/calendar_booking_model.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key, required this.booking});

  final CalendarBookingModel booking;

  @override
  Widget build(BuildContext context) {
    final isPaid = booking.status == BookingStatus.paid;
    final statusColor =
        isPaid ? ColorsManager.thredColor : ColorsManager.darkRedColor;
    final statusBackground = isPaid
        ? ColorsManager.bookingPaidStatusBackgroundColor
        : ColorsManager.bookingCancelledStatusBackgroundColor;
    final durationUnit = booking.matchDuration.inHours == 1
        ? StringsManager.bookingHour
        : StringsManager.bookingHours;

    return Container(
      width: double.infinity,
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
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  booking.stadiumName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: ColorsManager.blackColor,
                    fontSize: FontManager.fontSize14,
                    fontWeight: FontManager.fontWeightBold,
                  ),
                ),
              ),
              const SizedBox(width: HorizontalManager.horizontal8),
              Expanded(
                flex: 5,
                child: Text(
                  booking.bookingDateTime,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: VerticalManager.vertical2),
          Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: booking.firstTeamName),
                  TextSpan(
                    text: StringsManager.bookingVersus,
                    style: const TextStyle(color: ColorsManager.greyColor),
                  ),
                  TextSpan(text: booking.secondTeamName),
                ],
              ),
              style: const TextStyle(
                color: ColorsManager.blackColor,
                fontSize: FontManager.fontSize14,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: VerticalManager.vertical2),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${booking.matchDuration.inHours} $durationUnit'
                  '${StringsManager.bookingPitchSeparator}'
                  '${StringsManager.bookingPitch} ${booking.pitchNumber}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: ColorsManager.greyColor,
                    fontSize: FontManager.fontSize14,
                  ),
                ),
              ),
              const SizedBox(width: HorizontalManager.horizontal8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: HorizontalManager.horizontal8,
                  vertical: VerticalManager.vertical2,
                ),
                decoration: BoxDecoration(
                  color: statusBackground,
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                ),
                child: Text(
                  isPaid
                      ? StringsManager.bookingPaid
                      : StringsManager.bookingCancelled,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: FontManager.fontSize14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
