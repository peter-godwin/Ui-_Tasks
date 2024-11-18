import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/Saly-1.png',
            ),
            SizedBox(height: 100.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'Discover the world with us',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 34.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
