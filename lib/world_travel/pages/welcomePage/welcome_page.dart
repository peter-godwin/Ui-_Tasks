import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:works_on/world_travel/pages/welcomePage/welcome_page_cubit.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: SizedBox(
            child: BlocListener<WelcomePageCubit, WelcomePageState>(
          listener: (context, state) {
            if (state is WelcomePageLoaded) {
              context.read<WelcomePageCubit>().toOnboardingScreen(context);
            }
          },
          child: BlocBuilder<WelcomePageCubit, WelcomePageState>(
              builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 89.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48.w),
                  child: Row(
                    children: [
                      SvgPicture.asset('lib/assets/images/Frame 1.svg'),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'WorldTravel',
                    style: GoogleFonts.novaScript(
                      fontWeight: FontWeight.w400,
                      fontSize: 48.sp,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 100.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 76.w),
                  child: SvgPicture.asset('lib/assets/images/Frame 2.svg'),
                ),
              ],
            );
          }),
        )),
      ),
    );
  }
}
