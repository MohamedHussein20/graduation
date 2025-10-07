import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBottomShapes extends StatelessWidget {
  const SearchBottomShapes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Image.asset(
            "assets/images/blue_corner.png",
          ),
        ),
        Image.asset(
          "assets/images/yellow_corner.png",
        ),
      ],
    );
  }
}
