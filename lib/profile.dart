import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/theme.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> sessions = [
    '09:20 AM',
    '10:30 AM',
    '10:45 AM',
    '10:15 AM',
    '10:40 AM',
    '10:20 AM',
    '10:20 AM',
  ];
  List selectedSession = [];
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/port_img.png',
                    height: 226,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Brooklyn Simmons",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Professional Counsellor ",
                            style: TextStyle(
                              color: Color(0xe5ffffff),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32),
                    const Text(
                      "About Brooklyn",
                      style: TextStyle(
                        color: Color(0xff040415),
                        fontSize: 17,
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15),
                    const SizedBox(
                      width: 150,
                      child: TabBar(
                          labelColor: blue,
                          unselectedLabelColor: grey,
                          indicatorColor: blue,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 2,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                          unselectedLabelStyle: TextStyle(
                            color: grey,
                            fontWeight: FontWeight.w500,
                          ),
                          tabs: [
                            Tab(
                              child: Text("About"),
                            ),
                            Tab(
                              child: Text("Details"),
                            ),
                          ]),
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Image.asset(
                          "assets/chart_icon.png",
                          height: 13,
                          width: 15,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 8),
                        const Text(
                          "English · Mandarin ",
                          style: TextStyle(
                            color: Color(0xcc474847),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 11),
                    const Text(
                      "Brooklyn Simmons has over 10 years of experience counselling young professionals and couples.",
                      style: TextStyle(
                        color: Color(0xcc474847),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 22),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0x194bb5b5),
                            ),
                            child: const Text(
                              "Relationships",
                              style: TextStyle(
                                color: Color(0xff4bb4b4),
                                fontSize: 11,
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                        SizedBox(width: 6),
                        Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0x194bb5b5),
                            ),
                            child: const Text(
                              "Anger Management",
                              style: TextStyle(
                                color: Color(0xff4bb4b4),
                                fontSize: 11,
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(height: 34),
                    const Text(
                      "Select a day",
                      style: TextStyle(
                        color: Color(0xff040415),
                        fontSize: 15,
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    DatePicker(
                      DateTime.now(),
                      width: 60,
                      height: 80,
                      controller: _controller,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: blue,
                      selectedTextColor: Colors.white,
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                          _selectedValue = date;
                        });
                      },
                    ),
                    SizedBox(height: 34),
                    const Text(
                      "Available sessions",
                      style: TextStyle(
                        color: Color(0xff040415),
                        fontSize: 15,
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 34),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: sessions.length,
                  separatorBuilder: (ctx, i) => const SizedBox(width: 10),
                  itemBuilder: (ctx, i) {
                    return GestureDetector(
                      onTap: () {
                        if (selectedSession.contains(i)) {
                          setState(() {
                            selectedSession.remove(i);
                          });
                        } else {
                          setState(() {
                            selectedSession.add(i);
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: selectedSession.contains(i)
                                ? Colors.transparent
                                : Colors.grey,
                            width: 1,
                          ),
                          color: selectedSession.contains(i)
                              ? Color(0xff4bb4b4)
                              : white,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 14,
                        ),
                        child: Text(
                          sessions[i],
                          style: TextStyle(
                            color: selectedSession.contains(i)
                                ? const Color(0xffffffff)
                                : grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blue),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Book session",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
