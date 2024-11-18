import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:works_on/world_travel/pages/login_page/welcome_back_page.dart';
import 'package:works_on/world_travel/pages/login_page/welcome_to_home_page.dart';


class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 21.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/Saly-12.png'),
                Text(
                  'Get Started',
                  style: GoogleFonts.nerkoOne(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000),
                  ),
                ),
                Text(
                  'by creating a free account.',
                  style: GoogleFonts.mulish(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF606060)),
                ),
                SizedBox(height: 22.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: GoogleFonts.mulish(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: SvgPicture.asset(
                            'lib/assets/images/Vector (4).svg'),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      hintText: 'Full name',
                      fillColor: const Color(0xFFE6E6E6),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: GoogleFonts.mulish(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: SvgPicture.asset(
                            'lib/assets/images/Vector (3).svg'),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(1.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      hintText: 'Valid email',
                      fillColor: const Color(0xFFE6E6E6),
                      filled: true,
                    ),
                  ),
                ),
                 SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.r),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: GoogleFonts.mulish(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(16.w),
                        child:
                            SvgPicture.asset('lib/assets/images/Group (1).svg'),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      hintText: 'Phone number',
                      fillColor: const Color(0xFFE6E6E6),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: GoogleFonts.mulish(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: SvgPicture.asset('lib/assets/images/Group.svg'),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                      hintText: 'Strong password',
                      fillColor: const Color(0xFFE6E6E6),
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 25.sp,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          activeColor: Colors.black,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        'By checking the box you agree to our',
                        style: GoogleFonts.poppins(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        ' Terms',
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFF3951),
                        ),
                      ),
                      Text(
                        ' and',
                        style: GoogleFonts.poppins(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        ' Condition',
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFF3951),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeToHomePage()));
                  },
                  child: Container(
                    height: 47.h,
                    width: 244.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomeBackPage(),
                            ));
                      },
                      child: Text(
                        ' Login.',
                        style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFF3951),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
