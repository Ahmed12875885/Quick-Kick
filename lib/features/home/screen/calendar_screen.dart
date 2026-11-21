import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/features/home/model/calendar_booking_model.dart';
import 'package:quick_kick/features/home/widgets/booking_card.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  static final List<CalendarBookingModel> _bookings = [
    CalendarBookingModel(
      stadiumName: StringsManager.bookingStadiumAlNasrClub,
      bookingDateTime: StringsManager.bookingTodayAtEight,
      firstTeamName: StringsManager.bookingTeamA,
      secondTeamName: StringsManager.bookingTeamB,
      matchDuration: const Duration(hours: 1),
      pitchNumber: 3,
      status: BookingStatus.paid,
    ),
    CalendarBookingModel(
      stadiumName: StringsManager.bookingStadiumAlHilal,
      bookingDateTime: StringsManager.bookingFridayAtSeven,
      firstTeamName: StringsManager.bookingTeamG,
      secondTeamName: StringsManager.bookingTeamF,
      matchDuration: const Duration(hours: 2),
      pitchNumber: 2,
      status: BookingStatus.paid,
    ),
    CalendarBookingModel(
      stadiumName: StringsManager.bookingStadiumAlNasrClub,
      bookingDateTime: StringsManager.bookingSundayApril25AtEight,
      firstTeamName: StringsManager.bookingTeamR,
      secondTeamName: StringsManager.bookingTeamC,
      matchDuration: const Duration(hours: 5),
      pitchNumber: 9,
      status: BookingStatus.paid,
    ),
    CalendarBookingModel(
      stadiumName: StringsManager.bookingStadiumKingFahd,
      bookingDateTime: StringsManager.bookingTodayAtEight,
      firstTeamName: StringsManager.bookingTeamS,
      secondTeamName: StringsManager.bookingTeamW,
      matchDuration: const Duration(hours: 3),
      pitchNumber: 10,
      status: BookingStatus.cancelled,
    ),
    CalendarBookingModel(
      stadiumName: StringsManager.bookingStadiumAlNasrClub,
      bookingDateTime: StringsManager.bookingTodayAtEight,
      firstTeamName: StringsManager.bookingTeamH,
      secondTeamName: StringsManager.bookingTeamJ,
      matchDuration: const Duration(hours: 10),
      pitchNumber: 6,
      status: BookingStatus.cancelled,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView.separated(
        padding: const EdgeInsets.only(
          top: HeightManager.height50,
          bottom: HeightManager.height16,
        ),
        itemCount: _bookings.length,
        itemBuilder: (context, index) => BookingCard(booking: _bookings[index]),
        separatorBuilder: (context, index) =>
            const SizedBox(height: VerticalManager.vertical16),
      ),
    );
  }
}
