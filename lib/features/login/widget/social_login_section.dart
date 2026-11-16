import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
        IconButton(onPressed: () {}, icon: Icon(Icons.apple)),
      ],
    );
  }
}
