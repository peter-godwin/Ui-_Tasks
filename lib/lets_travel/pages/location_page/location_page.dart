import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.w,
                  ),
                  child: Text(
                    'Let’s travel',
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.sp,
                        color: const Color(0xFF3A4256)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 27.w),
                  child: SvgPicture.asset(
                      'lib/assets/images/hamburger menu.svg',
                      width: 27.w,
                      height: 19.5.h),
                )
              ],
            ),
            SizedBox(height: 25.h),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: TextField(
                        cursorColor: const Color(0xff000000),
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(15.w),
                            child: SvgPicture.asset(
                              'lib/assets/images/Search icon.svg',
                              width: 3.w,
                              height: 3.h,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Color(0xFFEDF1FA))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Color(0xFFEDF1FA))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: Color(0xFFE7F9FD))),
                          filled: true,
                          fillColor: const Color(0xFFF7F9FD),
                          hintText: 'Search your favourite place!',
                          prefix: SizedBox(width: 21.w),
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFB7C4E0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 44.h),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 23.w),
                          child: Image.asset(
                            'lib/assets/images/Bitmap.png',
                            width: 45.w,
                            height: 45.w,
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Peace Garden,',
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Recommended',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF0000B9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Mumbai, India',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFC5C5C5),
                                  ),
                                ),
                                const SizedBox(width: 88),
                                Text(
                                  '10km away',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFC5C5C5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 23.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 314.h,
                              width: 270.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.r),
                                child: Image.asset(
                                  'lib/assets/images/Pasted image (2).png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Container(
                              height: 314.h,
                              width: 270.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'lib/assets/images/Pasted image (2).png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'lib/assets/images/Star.svg',
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            '67',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 20.w),
                          SvgPicture.asset(
                            'lib/assets/images/Star Copy 5.svg',
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            '137',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 162.w),
                          SvgPicture.asset('lib/assets/images/Star Copy 6.svg')
                        ],
                      ),
                    ),
                    SizedBox(height: 23.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.w),
                      child: Container(
                        width: 334.w,
                        height: 78.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC6ED6B),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 25.w),
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
                                        ? const Color(0xFF2B6A0D)
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
                              SizedBox(width: 12.w),
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
                                        ? const Color(0xFF2B6A0D)
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
                                      SizedBox(height: 8.h),
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
                                        ? const Color(0xFF2B6A0D)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(7),
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
                                        ? const Color(0xFF2B6A0D)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(7),
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
                                        ? const Color(0xFF2B6A0D)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(7),
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
                                          fontSize: 12,
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
                                        ? const Color(0xFF2B6A0D)
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
                    SizedBox(
                      height: 23.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF3A4256),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('lib/assets/images/Frame 25.svg',
                  width: 22, height: 22),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/Notification.svg',
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/Frame 28.svg',
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/Frame 40.svg',
              ),
              label: 'Back',
            ),
          ],
        ),
      ),
    );
  }
}
