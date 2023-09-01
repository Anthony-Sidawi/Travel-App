import 'package:flutter/material.dart';
import 'package:travel_app/misc/color.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  double height;

  ResponsiveButton(
      {Key? key, this.height = 50, this.width=120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true? double.maxFinite:width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true?Container(margin: const EdgeInsets.only(left: 20),
              child: AppText(
                text: 'Book Trip Now',
                color: Colors.white,
              ),
            ):Container(),
            Image.asset('image/button-one.png'),
          ],
        ),
      ),
    );
  }
}
