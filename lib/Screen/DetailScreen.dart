import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreenPage extends StatefulWidget {
  const DetailScreenPage({Key? key}) : super(key: key);

  @override
  _DetailScreenPageState createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  int index = 0;
  int value = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Image(
                  width: 160,
                  height: 120,
                  image: AssetImage('assets/images/apothogyLogo.png'),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 320,
                    height: 260,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/CenterImage.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dove',
                            style: GoogleFonts.poppins(
                              color: Color(0xffD2D2D2),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Apoth.o.gy',
                            style: GoogleFonts.poppins(
                              color: Color(0xff39D5B0),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              value--;
                            });
                          },
                          child: Container(
                            width: 38,
                            height: 38,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffD2D2D2),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '-',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          '$value',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              value++;
                            });
                          },
                          child: Container(
                            width: 38,
                            height: 38,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff40D4D9),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 15,
                        initialRating: 5,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '5.0',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xffD2D2D2),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'A daydream of spring. Get lost in florals with notes of \ngolden daffodil, airy honeysuckle and orange blossom\nFlourish with matching Fragrance Mist.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffE1E4E4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/CenterImage.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Image(
                            image: AssetImage('assets/images/Rectangle1.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Image(
                            image: AssetImage('assets/images/Rectangle2.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Image(
                            image: AssetImage('assets/images/Rectangle3.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      index == 0 ? Colors.black : Colors.black,
                                  borderRadius: BorderRadius.circular(6),
                                  border: index == 0
                                      ? Border.all(
                                          width: 1,
                                          color: Color(0xff40D4D9),
                                        )
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                ),
                                child: Center(
                                  child: Text(
                                    '50ml',
                                    style: GoogleFonts.poppins(
                                      color: index != 0
                                          ? Colors.white
                                          : Color(0xff40D4D9),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      index == 1 ? Colors.black : Colors.black,
                                  borderRadius: BorderRadius.circular(6),
                                  border: index == 1
                                      ? Border.all(
                                          width: 1,
                                          color: Color(0xff40D4D9),
                                        )
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                ),
                                child: Center(
                                  child: Text(
                                    '100ml',
                                    style: GoogleFonts.poppins(
                                      color: index != 1
                                          ? Colors.white
                                          : Color(0xffE1E4E4),
                                      //color: Color(0xffE1E4E4),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 2;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      index == 2 ? Colors.black : Colors.black,
                                  borderRadius: BorderRadius.circular(6),
                                  border: index == 2
                                      ? Border.all(
                                          width: 1,
                                          color: Color(0xff40D4D9),
                                        )
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                ),
                                child: Center(
                                  child: Text(
                                    '200ml',
                                    style: GoogleFonts.poppins(
                                      color: index != 2
                                          ? Colors.white
                                          : Color(0xffE1E4E4),
                                      //color: Color(0xffE1E4E4),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Total Price',
                              style: GoogleFonts.poppins(
                                color: Color(0xffD2D2D2),
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(
                            '\$17.99',
                            style: GoogleFonts.poppins(
                              color: Color(0xff39D5B0),
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, top: 10),
                        child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff39D5B0),
                          ),
                          child: Center(
                            child: Text(
                              'Add to Cart',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
