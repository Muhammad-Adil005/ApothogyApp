import 'package:apothogy_app/Screen/Navigate_To_other_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EditAccountScreen.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({Key? key}) : super(key: key);

  @override
  _ProfileScreenPageState createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff39D5B0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          'Profile',
                          style: GoogleFonts.nobile(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff423838),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42, left: 34),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl.png'),
                      backgroundColor: Color(0xffF16565),
                      radius: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User12345',
                            style: GoogleFonts.nobile(
                              color: Color(0xff39D5B0),
                              fontWeight: FontWeight.w500,
                              fontSize: 26,
                            ),
                          ),
                          Text(
                            'user123@gmail.com',
                            style: GoogleFonts.nobile(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: InkWell(
                  onTap: () {
                    NavigateTo(context: context, page: EditAccountScreenPage());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.07,
                    color: Color(0xff39D5B0),
                    child: Center(
                      child: Text(
                        'Edit Account',
                        style: GoogleFonts.nobile(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color(0xff39D5B0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'My Slide Show',
                              style: GoogleFonts.nobile(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8F8F8F),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.002,
                      decoration: BoxDecoration(
                        color: Color(0xffE9E9E9),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffE9E9E9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.call_to_action_outlined,
                            color: Color(0xff39D5B0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Apply Skin Filter',
                              style: GoogleFonts.nobile(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8F8F8F),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.002,
                      decoration: BoxDecoration(
                        color: Color(0xffE9E9E9),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffE9E9E9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Color(0xff39D5B0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Settings',
                              style: GoogleFonts.nobile(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8F8F8F),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.002,
                      decoration: BoxDecoration(
                        color: Color(0xffE9E9E9),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffE9E9E9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.power_settings_new_sharp,
                            color: Color(0xff39D5B0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Logout',
                              style: GoogleFonts.nobile(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.002,
                      decoration: BoxDecoration(
                        color: Color(0xffE9E9E9),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffE9E9E9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff40D4D9),
        backgroundColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        //fixedColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff40D4D9),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                NavigateTo(context: context, page: ProfileScreenPage());
              },
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
