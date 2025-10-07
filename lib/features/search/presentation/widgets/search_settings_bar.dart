import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/core/utils/theme_provider.dart';
import 'package:provider/provider.dart';

class SearchSettingsBar extends StatefulWidget {
  const SearchSettingsBar({
    super.key,
  });

  @override
  State<SearchSettingsBar> createState() => _SearchSettingsBarState();
}

class _SearchSettingsBarState extends State<SearchSettingsBar> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 40.h),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4052D3),
            Color(0xFF7A53B5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            width: 180.w,
            height: 75.h,
            "assets/images/mowasalaty.png",
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              Switch(
                value: context.watch<ThemeProvider>().isDarkMode,
                onChanged: (value) {
                  context.read<ThemeProvider>().toggleTheme(value);
                },
                activeThumbColor: Theme.of(
                  context,
                ).colorScheme.onPrimary,
              ),
              SizedBox(width: 10.w),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(
                  "En",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.onPrimary,
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
