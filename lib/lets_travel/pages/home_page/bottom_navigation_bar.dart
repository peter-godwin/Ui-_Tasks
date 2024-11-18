import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:works_on/lets_travel/pages/back_page/Back.dart';
import 'package:works_on/lets_travel/pages/home/Home.dart';
import 'package:works_on/lets_travel/pages/notifocation_page/Notifications.dart';
import 'package:works_on/lets_travel/pages/profile_page/profile.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Notifications(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Back(),
              ),
            );
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFC4F40),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/images/Frame 25.svg',
              color: currentIndex == 0 ? Colors.grey : Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/images/Notification.svg',
              color: currentIndex == 1 ? Colors.grey : Colors.white,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/images/Frame 28.svg',
              color: currentIndex == 2 ? Colors.grey : Colors.white,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/images/Frame 40.svg',
              color: currentIndex == 3 ? Colors.grey : Colors.white,
            ),
            label: 'Back',
          ),
        ],
      ),
    );
  }
}
