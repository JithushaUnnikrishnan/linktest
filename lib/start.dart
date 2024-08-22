import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'assessments.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          Positioned(
            top: 40,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Assess()));
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ))),
          Positioned(
            child: Container(
              height: 322,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color(0x8091B655), Color(0x8069F5BB)],
                  center: Alignment.bottomCenter,
                  stops: [.01, 2],
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 40, bottom: 50, left: 150),
                height: 190,
                width: 145,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image 56.png",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 100,
              left: 20,
              child: Text(
                "Health Risk \nAssessment",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF222E58)),
              )),
          Positioned(
              top: 180,
              left: 20,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      size: 15,
                      color: Color(0xFF222E58),
                    ),
                    Text(
                      "4 min",
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF222E58)),
                    )
                  ],
                ),
                height: 20,
                width: 62,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              )),
          Positioned(
              top: 280,
              child: Container(
                width: 412,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white,
                ),
              )),
          Positioned(
              top: 290,
              left: 20,
              child: Text(
                "What do you get ?",
                style: GoogleFonts.poppins(
                    color: Color(0xFF222E58),
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              )),
          Positioned(
            top: 330,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Transform.scale(
                    scale: 0.5,
                    child: Image.asset(
                      'assets/levk.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Transform.scale(
                    scale: 0.7,
                    child: Image.asset(
                      'assets/Group.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      'assets/3.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Transform.scale(
                    scale: 0.5,
                    child: Image.asset(
                      'assets/sg.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 415,
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "Key Body\n  Vitals",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 8),
                  ),
                  SizedBox(
                    width: 53,
                  ),
                  Text(
                    "Posture\nAnalysis",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 8),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "      Body  \nComposition",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 8),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
                    "Instant\nReports",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 8),
                  ),
                ],
              )),
          Positioned(
              top: 470,
              left: 20,
              child: Text(
                "How we do it?",
                style: GoogleFonts.poppins(
                    color: Color(0xFF222E58),
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              )),
          Positioned(
              top: 420,
              left: 200,
              child: Container(
                  width: 150,
                  height: 160,
                  child: Image(
                    image: AssetImage("assets/las.png"),
                    fit: BoxFit.contain,
                  ))),
          Positioned(
              top: 510,
              left: 20,
              child: Container(
                height: 340,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFAFCFF),
                    border: Border.all(
                      color: Color(0xFFE6E6E6),
                    )),
              )),
          Positioned(
              top: 480,
              left: 70,
              child: Container(
                  height: 180,
                  width: 290,
                  child: Image(image: AssetImage("assets/gr.png")))),
          Positioned(
              top: 675,
              left: 45,
              child: Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 15,
                          width: 13,
                          child: Image(image: AssetImage("assets/lase.png"))),
                      Text(
                        "We do not store or share your personal data",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF707070)),
                      ),
                    ],
                  ),
                ),
                height: 31,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 191, 77, 0.1)),
              )),
          Positioned(
              top: 715,
              left: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Ensure that you are in a well-lit space",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    "2. Allow camera access and place your device\n   against a stable object or wall",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    "3. Avoiding wearing baggy clothes",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    "4. Make sure you exercise as per the instruction \n    provided by the trainer",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  )
                ],
              ))
        ]));
  }
}
