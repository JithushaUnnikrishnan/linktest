import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktest/start.dart';

class Assess extends StatefulWidget {
  const Assess({super.key});

  @override
  State<Assess> createState() => _AssessState();
}

class _AssessState extends State<Assess> {
  int itemsToShow = 1;
  bool showViewMore = true;
  List<String> items = List<String>.generate(20, (index) => " ${index + 1}");

  bool showAll = false;
  List<String> itemss =
      List<String>.generate(10, (index) => "Item ${index + 1}");
  bool showChalleng = false;
  List<String> itemsss =
      List<String>.generate(10, (index) => "Item ${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 303,
                width: 375,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Color(0xFFF1F1F9)),
                child: ListView.builder(
                  itemCount: showViewMore ? itemsToShow + 1 : items.length,
                  itemBuilder: (context, index) {
                    if (index == itemsToShow && showViewMore) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            showViewMore = false;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 129, vertical: 5),
                          height: 25,
                          width: 99,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xFF232F58)),
                          child: Center(
                              child: Text(
                            "View all",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      );
                    }
                    return Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 12, bottom: 5),
                        height: 120,
                        width: 318,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset(0, 1),
                                  color: Colors.grey.shade200)
                            ]),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 133,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/image 193.png"),
                                      fit: BoxFit.fitHeight),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(11),
                                      topLeft: Radius.circular(11)),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(227, 103, 49, 0.5),
                                        Color.fromRGBO(218, 190, 93, 0.5)
                                      ],
                                      begin: Alignment.topRight,
                                      end: Alignment.topLeft)),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Fitness Assessment",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF222E58)),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Wrap(
                                      spacing: 8.0,
                                      runSpacing: 6.0,
                                      children: [
                                        Text(
                                          "Get Started On Your Fitness Goals With Our Physical Assessment And Vital Scan",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        CircleAvatar(
                                          child: Image.asset(
                                            "assets/Vector.png",
                                            height: 22,
                                          ),
                                          radius: 11,
                                        ),
                                        Text(
                                          "Start",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xFF255FD5)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Start()));
                        },
                        child: Container(
                          height: 135,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(11),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(0, 1),
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 135,
                                width: 133,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/image 56.png"),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(11),
                                    topLeft: Radius.circular(11),
                                  ),
                                  gradient: RadialGradient(
                                    colors: [
                                      Color.fromRGBO(145, 182, 85, 0.5),
                                      Color.fromRGBO(105, 245, 187, 0.5),
                                    ],
                                    radius: .9,
                                    focal: Alignment(2, 2),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Health Risk Assessment",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF222E58),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Identify And Mitigate Health Risks With Precise, Proactive Assessments",
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            child: Image.asset(
                                              "assets/Vector.png",
                                              height: 22,
                                            ),
                                            radius: 11,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "Start",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xFF255FD5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 23,
                  ),
                  Text(
                    "Challenges",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showChalleng = !showChalleng;
                      });
                    },
                    child: Text(showChalleng ? "Hide" : "View All",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 15,
                    child: Icon(
                      showChalleng
                          ? Icons.arrow_back
                          : Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                    backgroundColor: Color(0xFF232F58),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                height: 139,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: showChalleng ? items.length : 1,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 375,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Color(0xFFC1EAD1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Today’s Challenge!",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Color(0xFF2B7A71)),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 18,
                                  width: 84,
                                  child: Center(
                                      child: Text(
                                    "Push Up 20x",
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF2B7A71)),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  height: 9,
                                  width: 161,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 9,
                                      width: 82,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFFFF88A5),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "10/20",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Complete",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: 130,
                                  height: 27,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(
                                            "assets/Vector.png",
                                            height: 22,
                                          ),
                                          radius: 11,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Continue",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xFF255FD5)),
                                        )
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                                  child: Image(
                            image: AssetImage("assets/image 53.png"),
                          ))),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 23,
                  ),
                  Text(
                    "Workout Routines",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showAll = !showAll;
                      });
                    },
                    child: Text(showAll ? "Hide" : "View All",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 15,
                    child: Icon(
                      showAll ? Icons.arrow_back : Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                    backgroundColor: Color(0xFF232F58),
                  )
                ],
              ),
            ),
            Container(
              height: 112,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: showAll ? items.length : 1,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFCDCDCD),
                            ),
                            borderRadius: BorderRadius.circular(21)),
                        child: Row(
                          children: [
                            Container(
                              width: 107,
                              height: 112,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/sd 1.png")),
                                  color: Color(0xFFFCE2BC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(21),
                                      bottomLeft: Radius.circular(21))),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sweat Starter",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Full Body",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xFF666666)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 66,
                                    height: 21,
                                    child: Center(
                                      child: Text(
                                        "Lose Weight",
                                        style: GoogleFonts.poppins(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF255FD5)),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(21),
                                        border: Border.all(
                                            color: Color(0xFFCDCDCD))),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Difficulty:",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xFF666666)),
                                      ),
                                      Text(
                                        "Medium",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xFFFF88A5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFCDCDCD),
                            ),
                            borderRadius: BorderRadius.circular(21)),
                        child: Row(
                          children: [
                            Container(
                              width: 110,
                              height: 112,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/image 54.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sweat Starter",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Full Body",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xFF666666)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 66,
                                    height: 21,
                                    child: Center(
                                      child: Text(
                                        "Lose Weight",
                                        style: GoogleFonts.poppins(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF255FD5)),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(21),
                                        border: Border.all(
                                            color: Color(0xFFCDCDCD))),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Difficulty:",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xFF666666)),
                                      ),
                                      Text(
                                        "Medium",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xFFFF88A5),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
