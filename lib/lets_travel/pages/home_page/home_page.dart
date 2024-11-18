import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_navigation_bar.dart';
import 'date_card.dart';
import 'popular_destination.dart';
import 'select_location_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LetsTravelPage extends StatelessWidget {
  const LetsTravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white12,
        title: Text(
          'Let\' s Travel',
          style: GoogleFonts.workSans(
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF3A4256),
          ),
        ),
        actions: [
          IconButton(
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.75.w),
              child: SvgPicture.asset('lib/assets/images/hamburger menu.svg'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: TextField(
                  cursorColor: const Color(0xff0000000),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(15.r),
                      child:
                          SvgPicture.asset('lib/assets/images/Search icon.svg'),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFEDF1FA))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFEDF1FA))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFEDF1FA))),
                    filled: true,
                    fillColor: const Color(0xFFF7F9FD),
                    hintText: 'Search your favourite place!',
                    prefix: const SizedBox(width: 21),
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFB7C4E0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              const SelectLocationCard(),
              SizedBox(height: 26.h),
              const PopularDestination(),
              SizedBox(height: 53.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                child: Text(
                  'Showing for wednesday.',
                  style: GoogleFonts.montserrat(
                      fontSize: 13.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 28.h),
              const AvailableDates(),
              const SizedBox(height: 39),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
