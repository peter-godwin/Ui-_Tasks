import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableDates extends StatefulWidget {
  const AvailableDates({super.key});

  @override
  State<AvailableDates> createState() => _AvailableDatesState();
}

class _AvailableDatesState extends State<AvailableDates> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        width: 334.w,
        height: 78.h,
        decoration: BoxDecoration(
          color: const Color(0xFFFFC1C1),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Container(
                    height: 62.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? const Color(0xFFFF5F5F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mo',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 0
                                ? Colors.white
                                : const Color(0xFF3A3C6A),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '7',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 0
                                ? Colors.white
                                : const Color(0xFF8A8BB1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Container(
                    height: 62.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? const Color(0xFFFF5F5F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tu',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 1
                                ? Colors.white
                                : const Color(0xFF3A3C6A),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          '8',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 1
                                ? Colors.white
                                : const Color(0xFF8A8BB1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Container(
                    height: 62.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      color: selectedIndex == 2
                          ? const Color(0xFFFF5F5F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'We',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 2
                                ? Colors.white
                                : const Color(0xFF3A3C6A),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '9',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 2
                                ? Colors.white
                                : const Color(0xFF8A8BB1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  child: Container(
                    height: 62.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      color: selectedIndex == 3
                          ? const Color(0xFFFF5F5F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Th',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 3
                                ? Colors.white
                                : const Color(0xFF3A3C6A),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 3
                                ? Colors.white
                                : const Color(0xFF8A8BB1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  },
                  child: Container(
                    height: 62.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      color: selectedIndex == 4
                          ? const Color(0xFFFF5F5F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fri',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 4
                                ? Colors.white
                                : const Color(0xFF3A3C6A),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '11',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 4
                                ? Colors.white
                                : const Color(0xFF8A8BB1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                  },
                  child: Container(
                    height: 62.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      color: selectedIndex == 5
                          ? const Color(0xFFFF5F5F)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sa',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 5
                                ? Colors.white
                                : const Color(0xFF3A3C6A),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '12',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: selectedIndex == 5
                                ? Colors.white
                                : const Color(0xFF8A8BB1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
