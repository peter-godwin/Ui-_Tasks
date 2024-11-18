import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bottom_navigation_bar.dart';
import '../shoeview/product_details.dart';
import '../shoeview/product_details_2.dart';
import '../shoeview/product_details_3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 42.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'lib/assets/images/menu.svg',
                  width: 29.w,
                  height: 29.h,
                ),
                SvgPicture.asset(
                  'lib/assets/images/Vector (5).svg',
                  height: 33.46.h,
                  width: 104.79.w,
                ),
                SvgPicture.asset(
                  'lib/assets/images/cartIcon.svg',
                  width: 32.w,
                  height: 32.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: TextField(
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                // color: const Color(0xFFC7C7C7),
              ),
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child:
                      SvgPicture.asset('lib/assets/images/MagnifyingGlass.svg'),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 7.h),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                hintText: 'Search...',
                fillColor: const Color(0xFFF2F2F2),
                filled: true,
                prefix: SizedBox(width: 30.w),
              ),
            ),
          ),
          SizedBox(height: 19.94.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Newly Arrived',
              style: GoogleFonts.poppins(
                fontSize: 31.58.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(23.w),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 245.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/assets/images/unsplash_kP6knT7tjn4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 22.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Air Force 1',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24.56.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductDetails()));
                                  },
                                  child: SvgPicture.asset(
                                    'lib/assets/images/plus.svg',
                                    width: 39.w,
                                    height: 39.h,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$249',
                              style: GoogleFonts.poppins(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 17.59.h),
                    Container(
                      width: double.infinity,
                      height: 245.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/assets/images/unsplash_kP6knT7tjn4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 22.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Air Max 1',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24.56.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductDetails2()));
                                  },
                                  child: SvgPicture.asset(
                                    'lib/assets/images/plus.svg',
                                    width: 39.w,
                                    height: 39.h,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$199',
                              style: GoogleFonts.poppins(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 17.59.h),
                    Container(
                      width: double.infinity,
                      height: 245.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/assets/images/unsplash_g3CMh2nqj_w.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 22.w, right: 21.w, top: 21.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Air Jordan 1',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24.56.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductDetails3(),
                                        ));
                                  },
                                  child: SvgPicture.asset(
                                    'lib/assets/images/plus.svg',
                                    width: 39.w,
                                    height: 39.h,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$99',
                              style: GoogleFonts.poppins(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
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
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
