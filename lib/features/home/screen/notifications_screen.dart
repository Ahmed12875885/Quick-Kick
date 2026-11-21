
import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/font_manager.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/horizontal_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/strings_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/features/home/widgets/coustom_notificationcard.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: VerticalManager.vertical16,
          horizontal: HorizontalManager.horizontal0,
        ),
        child: Column(
          children: [
            SizedBox(height: HeightManager.height50),
            TextField(
              style: TextStyle(
                color: ColorsManager.blackColor,
                fontSize: FontManager.fontSize16,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.secondaryColor,
                hintText: StringsManager.search,
                hintStyle: TextStyle(
                  color: ColorsManager.blackColor,
                  fontSize: FontManager.fontSize16,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsManager.blackColor,
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.close,
                      color: ColorsManager.blackColor,
                    ),
                  ],
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(
                    color: ColorsManager.greyHalfOpacityColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeManager.size15),
                  borderSide: BorderSide(
                    color: ColorsManager.primaryColor,
                  ),
                ),
                contentPadding: EdgeInsets.all(PaddingManager.padding16),
              ),
            ),
                    SizedBox(height: HeightManager.height16),
            Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: 5,
            itemBuilder: (context, index) => CoustomNotificationcard(
        title: [
          StringsManager.notificationBookingConfirmedTitle,
          StringsManager.notificationMatchReminderTitle,
          StringsManager.notificationPaymentSuccessfulTitle,
          StringsManager.notificationBookingCancelledTitle,
          StringsManager.notificationSpecialOfferTitle,
        ][index],
        description: [
          StringsManager.notificationBookingConfirmedDescription,
          StringsManager.notificationMatchReminderDescription,
          StringsManager.notificationPaymentSuccessfulDescription,
          StringsManager.notificationBookingCancelledDescription,
          StringsManager.notificationSpecialOfferDescription,
        ][index],
        time: [
          StringsManager.notificationBookingConfirmedTime,
          StringsManager.notificationMatchReminderTime,
          StringsManager.notificationPaymentSuccessfulTime,
          StringsManager.notificationBookingCancelledTime,
          StringsManager.notificationSpecialOfferTime,
        ][index],
            ),
            separatorBuilder: (context, index) =>
          SizedBox(height: HeightManager.height16),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
