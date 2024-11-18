import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 88.h),
              child: Image.asset(
                'lib/assets/images/Saly-44.png',
              ),
            ),
            SizedBox(height: 119.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'To the most famous places of the world',
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
