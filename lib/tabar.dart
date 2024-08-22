import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktest/hero.dart';

import 'Appointment.dart';
import 'assessments.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Jane",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF255FD5)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Heroo()),
                    );
                  },
                  child: Hero(
                    tag: "hero-image",
                    child: Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/jp.jpg"))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
              child: Container(
                //
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F9),
                    borderRadius: BorderRadius.circular(26)),
                height: 57,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TabBar(
                    dividerColor: Color(0xFFF1F1F9),
                    labelColor: Color(0xFF255FD5),
                    unselectedLabelColor: Color(0xFF6B6B6B),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Colors.white),
                    tabs: [
                      Tab(
                          child: Text(
                        "My Assessments",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                      Tab(
                        child: Text(
                          "My Appointments",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Assess(),
                Appoint(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
