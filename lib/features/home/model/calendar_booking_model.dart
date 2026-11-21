class CalendarBookingModel {
  final String stadiumName;
  final String bookingDateTime;
  final String firstTeamName;
  final String secondTeamName;
  final Duration matchDuration;
  final int pitchNumber;
  final BookingStatus status;

  const CalendarBookingModel({
    required this.stadiumName,
    required this.bookingDateTime,
    required this.firstTeamName,
    required this.secondTeamName,
    required this.matchDuration,
    required this.pitchNumber,
    required this.status,
  });
}

enum BookingStatus { paid, cancelled }
