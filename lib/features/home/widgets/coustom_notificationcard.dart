import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/height_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';

class CoustomNotificationcard extends StatelessWidget {
  const CoustomNotificationcard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
  });

  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      height: 96,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: HeightManager.height16,
          vertical: VerticalManager.vertical8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              description,
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(time, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
