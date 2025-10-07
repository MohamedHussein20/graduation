import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBottomShapes extends StatelessWidget {
  const SearchBottomShapes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/blue_corner.png",
          width: 100.w,
        ),
        Image.asset(
          "assets/images/yellow_corner.png",
          width: 100.w,
        ),
      ],
    );
  }
}
