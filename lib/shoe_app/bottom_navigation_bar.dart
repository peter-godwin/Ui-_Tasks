import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  void onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 15.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(55.r),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: _currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/House.svg',
                color:
                    _currentIndex == 0 ? const Color(0xFF000000) : Colors.grey[500],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/MagnifyingGlass (1).svg',
                color:
                    _currentIndex == 1 ? const Color(0xFF000000) : Colors.grey[500],
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/Vector (8).svg',
                color:
                    _currentIndex == 2 ? const Color(0xFF000000) : Colors.grey[500],
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/assets/images/UserCircle.svg',
                color:
                    _currentIndex == 3 ? const Color(0xFF000000) : Colors.grey[500],
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
