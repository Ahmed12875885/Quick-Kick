import 'package:flutter/material.dart';
import 'package:quick_kick/core/resources/colors_manager.dart';
import 'package:quick_kick/core/resources/padding_manager.dart';
import 'package:quick_kick/core/resources/size_manager.dart';
import 'package:quick_kick/core/resources/vertical_manager.dart';
import 'package:quick_kick/core/resources/width_manager.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key, 
    required this.hintText,
    this.isPassword = false,
    this.keyboardType,
  });

  final String hintText;
  final bool isPassword;
  final TextInputType? keyboardType;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isRemove = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? !isRemove : false,
      scrollPadding: EdgeInsets.only(
        top: VerticalManager.vertical80,
        bottom: VerticalManager.vertical20,
      ),
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isRemove ? Icons.visibility : Icons.visibility_off,
                  color: ColorsManager.blackColor,
                ),
                onPressed: () {
                  setState(() {
                    isRemove = !isRemove;
                  });
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.size15),
          borderSide: BorderSide(color: ColorsManager.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.size15),
          borderSide: BorderSide(
            color: ColorsManager.primaryColor,
            width: WidthManager.width2,
          ),
        ),
        filled: true,
        fillColor: ColorsManager.secondaryColor,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: ColorsManager.greyColor),
        contentPadding: widget.isPassword
            ? null
            : EdgeInsets.all(PaddingManager.padding16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.size15),
        ),
      ),
    );
  }
}
