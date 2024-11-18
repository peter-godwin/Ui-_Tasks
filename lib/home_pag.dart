import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:works_on/lets_travel/lets_travel.dart';
import 'package:works_on/shoe_app/shoe_app.dart';
import 'package:works_on/single_page/pages/single_page.dart';
import 'package:works_on/world_travel/world_travel.dart';


class HomePag extends StatelessWidget {
  const HomePag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Works On",
            style: GoogleFonts.wallpoet(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 800,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyanAccent,
                Colors.lightBlue,
                Colors.blue,
              ],
            ),
            color: Colors.lightBlue,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 170),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white60,
                    border:
                        Border.all(color: Colors.deepPurpleAccent, width: 5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LetsTravel()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2),
                              gradient: const LinearGradient(colors: [
                                Colors.blueAccent,
                                Colors.deepPurple,
                              ])),
                          child: Center(
                              child: Text(
                            "Let's Travel",
                            style: GoogleFonts.nabla(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShoeApp()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2),
                              gradient: const LinearGradient(colors: [
                                Colors.deepPurple,
                                Colors.blueAccent,
                              ])),
                          child: Center(
                              child: Text(
                            "Shoe App",
                            style: GoogleFonts.nabla(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SinglePage()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2),
                              gradient: const LinearGradient(colors: [
                                Colors.blueAccent,
                                Colors.deepPurple,
                              ])),
                          child: Center(
                              child: Text(
                            "Single Page",
                            style: GoogleFonts.nabla(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WorldTravel()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2),
                              gradient: const LinearGradient(colors: [
                                Colors.deepPurple,
                                Colors.blueAccent,
                              ])),
                          child: Center(
                              child: Text(
                            "World Travel",
                            style: GoogleFonts.nabla(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
