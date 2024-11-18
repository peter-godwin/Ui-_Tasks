import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            'Popular Locations near you!',
            style: GoogleFonts.montserrat(
              fontSize: 13.5.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.27,
              color: const Color(0xFF3A4256),
            ),
          ),
        ),
        SizedBox(height: 22.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                Container(
                  width: 158.w,
                  height: 201.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.r),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/Shape.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 8.h),
                          child: Text(
                            'The Beauty of amazing India!',
                            style: GoogleFonts.montserrat(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'lib/assets/images/Subtract.svg',
                                width: 6.32.w,
                                height: 7.49.h,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'Kashmir, India',
                                style: GoogleFonts.montserrat(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                Container(
                  width: 158.w,
                  height: 201.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.r),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/Shapes.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 13, vertical: 8),
                          child: Text(
                            'Explore Best Sunsets in Maldives',
                            style: GoogleFonts.montserrat(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'lib/assets/images/Subtract.svg',
                                width: 6.32.w,
                                height: 7.49.h,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'Maldives',
                                style: GoogleFonts.montserrat(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                Container(
                  width: 158.w,
                  height: 201.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/Shapes.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 8.h),
                          child: Text(
                            'Explore Beaches in Bali',
                            style: GoogleFonts.montserrat(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'lib/assets/images/Subtract.svg',
                                width: 6.32.w,
                                height: 7.49.h,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'Bali, Indonesia',
                                style: GoogleFonts.montserrat(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
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
      ],
    );
  }
}
