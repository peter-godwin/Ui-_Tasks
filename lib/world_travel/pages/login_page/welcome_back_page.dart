import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:works_on/world_travel/pages/login_page/get_started_page.dart';
import 'package:works_on/world_travel/pages/login_page/verify_code_page.dart';
import 'package:works_on/world_travel/pages/login_page/welcome_to_home_page.dart';

class WelcomeBackPage extends StatefulWidget {
  const WelcomeBackPage({super.key});

  @override
  State<WelcomeBackPage> createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 36.h),
                child: Image.asset('lib/assets/images/Saly-12.png'),
              ),
              Text(
                'Welcome Back',
                style: GoogleFonts.nerkoOne(
                    fontSize: 40.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                'Sign in to access your account',
                style: GoogleFonts.mulish(
                  fontSize: 14.sp,
                  color: const Color(0xFF606060),
                ),
              ),
              SizedBox(height: 43.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: null,
                  style: GoogleFonts.mulish(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(16.w),
                      child:
                          SvgPicture.asset('lib/assets/images/Vector (3).svg'),
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
                    hintText: 'Enter your email',
                    fillColor: const Color(0xFFE6E6E6),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  style: GoogleFonts.mulish(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: SvgPicture.asset(
                        'lib/assets/images/Group.svg',
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
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
                    hintText: 'Password',
                    fillColor: const Color(0xFFE6E6E6),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25.w,
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
                    Text(
                      'Remember me',
                      style: GoogleFonts.poppins(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF000000),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerifyCodePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Forget password ?',
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFFF3951),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 43.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: SvgPicture.asset('lib/assets/images/Line 3.svg'),
                  ),
                  Text(
                    'or sign in with',
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: SvgPicture.asset('lib/assets/images/Line 3.svg'),
                  ),
                ],
              ),
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.5.w),
                    child: SvgPicture.asset(
                        'lib/assets/images/flat-color-icons_google.svg'),
                  ),
                  SvgPicture.asset('lib/assets/images/logos_facebook.svg'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.5.w),
                    child: SvgPicture.asset(
                        'lib/assets/images/fa6-brands_square-x-twitter.svg'),
                  ),
                ],
              ),
              SizedBox(height: 67.h),
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
                    borderRadius: BorderRadius.circular(20.r),
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
                    'Don’t have an account?',
                    style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF000000)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStartedPage()));
                    },
                    child: Text(
                      ' Sign up',
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
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
    );
  }
}
