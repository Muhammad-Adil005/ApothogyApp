import 'package:apothogy_app/Screen/Navigate_To_other_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'OrderPreviewScreen.dart';

class SelectFilterScreenPage extends StatefulWidget {
  const SelectFilterScreenPage({Key? key}) : super(key: key);

  @override
  _SelectFilterScreenPageState createState() => _SelectFilterScreenPageState();
}

class _SelectFilterScreenPageState extends State<SelectFilterScreenPage> {
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
                        padding: const EdgeInsets.only(left: 90),
                        child: Text(
                          'Select Filter',
                          style: GoogleFonts.nobile(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff423838),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                image: AssetImage('assets/images/GirlRectangleImage.png'),
              ),
              Text(
                'Select Filter',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 70,
                          color: Color(0xff666666),
                          child: Image(
                            image: AssetImage(
                                'assets/images/GirlRectangleImage1.png'),
                          ),
                        ),
                        Text(
                          'Ten Suns',
                          style: GoogleFonts.inter(
                            color: Color(0xffE5E4E4),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/images/GirlRectangleImage1.png'),
                        ),
                        Text(
                          'Lazarus',
                          style: GoogleFonts.inter(
                            color: Color(0xffE5E4E4),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/images/GirlRectangleImage1.png'),
                        ),
                        Text(
                          'Renew',
                          style: GoogleFonts.inter(
                            color: Color(0xffE5E4E4),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                              'assets/images/GirlRectangleImage1.png'),
                        ),
                        Text(
                          'Ra-ISE',
                          style: GoogleFonts.inter(
                            color: Color(0xffE5E4E4),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                'assets/images/GirlRectangleImage1.png'),
                          ),
                          Text(
                            'Lazarus',
                            style: GoogleFonts.inter(
                              color: Color(0xffE5E4E4),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: () {
                    NavigateTo(
                        context: context, page: OrderPreviewScreenPage());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: Color(0xff39D5B0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
