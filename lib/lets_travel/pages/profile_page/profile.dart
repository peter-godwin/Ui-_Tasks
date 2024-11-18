import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../location_page/location_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, 'Himanshu!",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: const Color(0xFF091D60),
                          ),
                        ),
                        Text(
                          'Let’s travel',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w900,
                            fontSize: 24.sp,
                            color: const Color(0xFF091D60),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 39.w),
                    child: SvgPicture.asset(
                        'lib/assets/images/hamburger menu.svg'),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: SingleChildScrollView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF585DF9),
                                  Color(0xFFFF908D),
                                  Color(0xFFFFDBDA),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Image.asset(
                                  'lib/assets/images/placeholder.png'),
                            ),
                          ),
                          Text(
                            'India',
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(width: 11.w),
                      Column(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF585DF9),
                                  Color(0xFFFF908D),
                                  Color(0xFFFFDBDA),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Image.asset(
                                  'lib/assets/images/placeholder (1).png'),
                            ),
                          ),
                          Text(
                            'India',
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(width: 11.w),
                      Column(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFF4641),
                                  Color(0xFFFF908D),
                                  Color(0xFFFFDBDA),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Image.asset(
                                  'lib/assets/images/placeholder (2).png'),
                            ),
                          ),
                          Text(
                            'India',
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(width: 11.w),
                      Column(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF585DF9),
                                  Color(0xFFFF908D),
                                  Color(0xFFFFDBDA),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset(
                                  'lib/assets/images/placeholder (3).png'),
                            ),
                          ),
                          Text(
                            'India',
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(width: 11.w),
                      Column(
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF585DF9),
                                  Color(0xFFFF908D),
                                  Color(0xFFFFDBDA),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Image.asset(
                                  'lib/assets/images/placeholder.png'),
                            ),
                          ),
                          Text(
                            'Kerala',
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                height: 89.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: const Color(0xFF232539),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Complete Profile  😊',
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Complete your personal information',
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFB4B5BA),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      'lib/assets/images/Group (2).svg',
                      width: 42.w,
                      height: 42.h,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                height: 440.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF585DF9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 27.w, vertical: 25.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'lib/assets/images/Vector (6).svg',
                            width: 11.w,
                            height: 14.h,
                          ),
                          SizedBox(width: 9.66),
                          Text(
                            '40+ best locations found near you',
                            style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 370.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          topRight: Radius.circular(25.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 33.h),
                                  child: Image.asset(
                                      'lib/assets/images/Cover.png'),
                                ),
                                SizedBox(width: 28.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 33.h),
                                    Row(
                                      children: [
                                        Text(
                                          '1.4 KM AWAY',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 7.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xFFACB1D9),
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        SvgPicture.asset(
                                          'lib/assets/images/Shapes.svg',
                                          width: 107.w,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Red River\nNational Park',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF3A3C6A)),
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'lib/assets/images/loaction Icon.svg',
                                          height: 11.h,
                                          width: 8.w,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          'Mumbai, India',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF585DF9),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15.h),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LocationPage(),
                                            ));
                                      },
                                      child: Container(
                                        height: 31.h,
                                        width: 116.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.72.r),
                                          color: const Color(0xFFF2F3F9),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color(0xFF585DF9),
                                              Color(0xFF5885F9),
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'View Location',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Details',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFF16183B)),
                                  ),
                                  SizedBox(height: 11.h),
                                  Container(
                                    child: ShaderMask(
                                      shaderCallback: (bounds) =>
                                          const LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.white
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        stops: [0, 0.3],
                                      ).createShader(bounds),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eros magna, congue sed tortor non, feugiat congue Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eros magna, congue sed tortor non, feugiat congueLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eros magna, congue sed tortor non, feugiat congue',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        softWrap: true,
                                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}
