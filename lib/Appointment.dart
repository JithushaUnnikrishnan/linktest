import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appoint extends StatefulWidget {
  const Appoint({super.key});

  @override
  State<Appoint> createState() => _AppointState();
}

class _AppointState extends State<Appoint> {
  bool showAlll = false;
  List<String> itemssss =
      List<String>.generate(10, (index) => "Item ${index + 1}");
  bool showAll = false;
  List<String> itemss =
      List<String>.generate(10, (index) => "Item ${index + 1}");
  bool showChalleng = false;
  List<String> itemsss =
      List<String>.generate(10, (index) => "Item ${index + 1}");
  final List<Color> colors = [
    Color(0xFFC6D9FF),
    Color(0xFFE9C6FF),
    Color(0xFFFFD4C6),
  ];
  final List<Color> colorss = [
    Color(0xFF4E88FF),
    Color(0xFFD186FF),
    Color(0xFFFE916E),
  ];
  final List<String> texts = [
    'Cancer 2nd Opinion',
    'Physiotherapy Appointment',
    'Fitness Appointment',
  ];

  final List<String> imagePaths = [
    'assets/dr.png',
    'assets/Vect.png',
    'assets/fit.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 310,
                width: 375,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Color(0xFFF1F1F9)),
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 180, // Maximum width of each item
                          childAspectRatio: 190 / 153, // Width to height ratio
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 0,
                        ),
                        itemCount: showAlll ? itemssss.length : 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colors[index % colors.length],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundColor: Colors.white,
                                      child: Image(
                                        image: AssetImage(
                                          imagePaths[index % imagePaths.length],
                                        ),
                                        height: 35,
                                        width: 35,
                                        fit: BoxFit.contain,
                                        color: colorss[index % colorss.length],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text(
                                      texts[index % texts.length],
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF222E58)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showAlll = !showAlll;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF232F58), // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        ),
                        child: Text(
                          showAlll ? "hide" : "View all",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
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
                  itemCount: showChalleng ? itemsss.length : 1,
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
                itemCount: showAll ? itemss.length : 1,
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
