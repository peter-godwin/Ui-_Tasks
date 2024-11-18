import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.h),
            Image.asset(
              'lib/assets/images/Saly-3.png',
            ),
            SizedBox(height: 107.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'With cheap and affordable prices',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 34.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
