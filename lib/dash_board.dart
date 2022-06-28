import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindlistic/profile.dart';

import 'Utils/theme.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> status = [
    'Depression',
    'Anger Management',
    'Relationship',
    'Anxiety',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome Back,",
                          style: TextStyle(
                            color: grey,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Alexander",
                          style: TextStyle(
                            color: Color(0xff474847),
                            fontSize: 15,
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/profile_img.png",
                        height: 39,
                        width: 39,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                const Text(
                  "Find a Counsellor",
                  style: TextStyle(
                    color: Color(0xff040415),
                    fontSize: 18,
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Color(0xff474847),
                                fontSize: 15,
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: Transform.scale(
                                scale: 0.75,
                                child: Image.asset(
                                  'assets/search_icon.png',
                                  height: 15,
                                  width: 15,
                                  fit: BoxFit.scaleDown,
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: blue,
                      ),
                      child: Transform.scale(
                        scale: 0.6,
                        child: Image.asset(
                          'assets/filter_icon.png',
                          height: 18,
                          width: 18,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Available this week",
                      style: TextStyle(
                        color: Color(0xff040415),
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "See All",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xff4bb4b4),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16),
                ListView.separated(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (ctx, i) => SizedBox(height: 10),
                  itemBuilder: (ctx, i) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              const Duration(seconds: 10);
                              Get.to(ProfileScreen());
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/profile_img2.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Leah Smith",
                                      style: TextStyle(
                                        color: Color(0xff474847),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      color: blue,
                                      size: 13,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Tue · 11:30",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xff4bb4b4),
                                        fontSize: 11,
                                        fontFamily: "DM Sans",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 8),
                                const Text(
                                  "Professional Counsellor ",
                                  style: TextStyle(
                                    color: Color(0x99474847),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 9),
                                const Text(
                                  "English · Mandarin ",
                                  style: TextStyle(
                                    color: Color(0x99474847),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    ...status.map(
                                      (e) => Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Color(0x194bb5b5),
                                        ),
                                        child: Text(
                                          e,
                                          style: const TextStyle(
                                            color: Color(0xff4bb4b4),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
