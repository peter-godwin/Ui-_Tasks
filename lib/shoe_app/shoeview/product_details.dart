import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'lib/assets/images/unsplash_kP6knT7tjn4 (1).png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 400.h),
                    Container(
                      width: double.infinity,
                      height: 533.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.r),
                              topLeft: Radius.circular(30.r)),
                          color: const Color(0xFFFFFFFF)),
                      padding: EdgeInsets.all(19.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    'Air Force 1',
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '\$249',
                                    style: TextStyle(
                                      fontSize: 30.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 46.w,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'lib/assets/images/Heart.svg',
                                      width: 55.w,
                                      height: 52.h,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15.5.h),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis diam, sit eget nisi a suspendisse. Vel ac non vitae dui fringilla sem donec aliquam. ',
                            style: TextStyle(
                              fontSize: 12.37.sp,
                              color: const Color(0xFF909090),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'Choose Color',
                            style: GoogleFonts.poppins(
                                fontSize: 23.58.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 36.h,
                                width: 76.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                height: 36.h,
                                width: 76.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                height: 36.h,
                                width: 76.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                height: 36.h,
                                width: 76.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Select Size',
                            style: GoogleFonts.poppins(
                              fontSize: 23.58.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.28.h),
                          Row(
                            children: [
                              Container(
                                width: 57.99.w,
                                height: 57.99.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFFF6F6F6),
                                  border: Border.all(
                                    color: const Color(0xFFCECECE),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '6',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xFFCECECE),
                                        fontSize: 28.6.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13.w),
                              Container(
                                width: 57.99.w,
                                height: 57.99.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFF6F6F6),
                                    border: Border.all()),
                                child: Center(
                                  child: Text(
                                    '7',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xFF000000),
                                        fontSize: 28.6,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13.w),
                              Container(
                                width: 57.99.w,
                                height: 57.99.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFF6F6F6),
                                    border: Border.all()),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xff0000000),
                                        fontSize: 28.6.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13.w),
                              Container(
                                width: 57.99.w,
                                height: 57.99.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFF6F6F6),
                                    border: Border.all()),
                                child: Center(
                                  child: Text(
                                    '9',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xFF000000),
                                        fontSize: 28.6.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13.w),
                              Container(
                                width: 57.99.w,
                                height: 57.99.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFF6F6F6),
                                    border: Border.all()),
                                child: Center(
                                  child: Text(
                                    '10',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xFF000000),
                                        fontSize: 28.6.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 28.h),
                          Expanded(
                            child: Container(
                              height: 61.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Buy now',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 31.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 13.sp),
                                  SvgPicture.asset(
                                    'lib/assets/images/cartIcon.svg',
                                    width: 32.w,
                                    height: 32.h,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
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
