import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/home_page/home_page.dart';

void main() {
  runApp(const LetsTravel());
}

class LetsTravel extends StatelessWidget {
  const LetsTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(376, 812),
      minTextAdapt: true,
      ensureScreenSize: true,
      splitScreenMode: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LetsTravelPage(),
      ),
    );
  }
}
