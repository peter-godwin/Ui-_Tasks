import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  var _currentIndex = 0;

  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF1F2F6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'lib/assets/images/Ellipse 1.png',
                      width: 48.w,
                      height: 48.h,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Samantha James',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          color: const Color(0xFF2F3542),
                        ),
                      ),
                      Text(
                        'Photographer',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: const Color(0xFF2F3542),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 85.w),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50.h,
                          width: 40.w,
                          child: Card(
                            shadowColor: Colors.blue,
                            margin: EdgeInsets.only(
                              top: 11.h,
                            ),
                            color: const Color.fromARGB(255, 220, 224, 226),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(20.r),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: SvgPicture.asset(
                                    'lib/assets/images/notification 1.svg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 48.h,
                    width: 263.w,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for photos...',
                        hintStyle: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(25.w),
                      ),
                    ),
                  ),
                  SizedBox(width: 24.w),
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: Card(
                      elevation: 15,
                      margin: EdgeInsets.zero,
                      color: const Color(0xFF3742FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.r),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          child: SvgPicture.asset(
                            'lib/assets/images/shape.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        children: [
                          InkWell(
                            radius: 10,
                            onTap: () => setSelectedIndex(0),
                            child: Container(
                              height: 40.h,
                              margin: EdgeInsets.symmetric(horizontal: 4.r),
                              padding: EdgeInsets.symmetric(horizontal: 16.r),
                              decoration: BoxDecoration(
                                border: selectedIndex == 0
                                    ? Border.all(color: const Color(0xFF3742FA))
                                    : null,
                                borderRadius: BorderRadius.circular(100.r),
                                color: selectedIndex == 0
                                    ? const Color(0xFF3742FA).withOpacity(0.20)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Nature',
                                  style: GoogleFonts.lato(
                                    fontSize: 12.r,
                                    fontWeight: FontWeight.w500,
                                    color: selectedIndex == 0
                                        ? const Color(0xFF3742FA)
                                        : const Color(0xFF2F3542),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            radius: 10,
                            onTap: () => setSelectedIndex(1),
                            child: Container(
                              height: 40.h,
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              decoration: BoxDecoration(
                                border: selectedIndex == 1
                                    ? Border.all(color: const Color(0xFF3742FA))
                                    : null,
                                borderRadius: BorderRadius.circular(100.r),
                                color: selectedIndex == 1
                                    ? const Color(0xFF3742FA).withOpacity(0.20)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Beautiful Landscape',
                                  style: GoogleFonts.lato(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: selectedIndex == 1
                                        ? const Color(0xFF3742FA)
                                        : const Color(0xFF2F3542),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            radius: 10,
                            onTap: () => setSelectedIndex(2),
                            child: Container(
                              height: 40.h,
                              margin: EdgeInsets.symmetric(horizontal: 4.r),
                              padding: EdgeInsets.symmetric(horizontal: 16.r),
                              decoration: BoxDecoration(
                                border: selectedIndex == 2
                                    ? Border.all(color: const Color(0xFF3742FA))
                                    : null,
                                borderRadius: BorderRadius.circular(100.r),
                                color: selectedIndex == 2
                                    ? const Color(0xFF3742FA).withOpacity(0.20)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Wildlife',
                                  style: GoogleFonts.lato(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: selectedIndex == 2
                                        ? const Color(0xFF3742FA)
                                        : const Color(0xFF2F3542),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            radius: 10,
                            onTap: () => setSelectedIndex(3),
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              decoration: BoxDecoration(
                                border: selectedIndex == 3
                                    ? Border.all(color: const Color(0xFF3742FA))
                                    : null,
                                borderRadius: BorderRadius.circular(100.r),
                                color: selectedIndex == 3
                                    ? const Color(0xFF3742FA).withOpacity(0.20)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Create',
                                  style: GoogleFonts.lato(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: selectedIndex == 3
                                        ? const Color(0xFF3742FA)
                                        : const Color(0xFF2F3542),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      Text(
                        'Recent Photography',
                        style: GoogleFonts.lato(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF2F3542)),
                      ),
                      SizedBox(
                        width: 99.w,
                      ),
                      Text(
                        'View All',
                        style: GoogleFonts.lato(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF3742FA),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        children: [
                          Container(
                            width: 324.w,
                            height: 400.h,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    'lib/assets/images/Rectangle 9.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: 24.w, top: 24.h),
                                        child: Card(
                                          color: Colors.black12,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.r),
                                            child: SvgPicture.asset(
                                              'lib/assets/images/favorite 1.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 32.w, top: 200.h),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Wildlife Photography',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'Landscape covered with snow...🌲',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 324.w,
                            height: 400.h,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    'lib/assets/images/Rectangle 9.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: 24.w, top: 24.h),
                                        child: Card(
                                          color: Colors.black12,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.r),
                                            child: SvgPicture.asset(
                                              'lib/assets/images/favorite 1.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 32.w, top: 200.h),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Wildlife Photography',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'Landscape covered with snow...🌲',
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
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
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 41.w),
              child: SalomonBottomBar(
                itemPadding:
                    EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
                selectedColorOpacity: 1,
                currentIndex: _currentIndex,
                onTap: (i) => setState(() => _currentIndex = i),
                items: [
                  SalomonBottomBarItem(
                    icon: SvgPicture.asset('lib/assets/images/home 1.svg'),
                    title: Text(
                      "Home",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    selectedColor: const Color(0xFF3742FA),
                  ),
                  SalomonBottomBarItem(
                    icon: SvgPicture.asset('lib/assets/images/Vector.svg'),
                    title: Text(
                      "Calendar",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    selectedColor: const Color(0xFF3742FA),
                  ),
                  SalomonBottomBarItem(
                    icon: SvgPicture.asset('lib/assets/images/Vector (1).svg'),
                    title: Text(
                      'Message',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    selectedColor: const Color(0xFF3742FA),
                  ),
                  SalomonBottomBarItem(
                    icon: SvgPicture.asset('lib/assets/images/Vector (2).svg'),
                    title: Text(
                      "Profile",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    selectedColor: const Color(0xFF3742FA),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
