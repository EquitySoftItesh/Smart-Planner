import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrderDetailScreen extends StatelessWidget {
  const MyOrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Text(
          'Cancel Order',
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(223, 0, 0, 1),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/product1.png',
                height: Get.height / 4,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 157,
                  child: Text(
                    'SKYTRENDS Valentine Day Gift ',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '120',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Address',
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 316,
              child: Text(
                '300 North Prospect Ave. Ridge St.San Conway, SC 29526',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 157,
                  child: Text(
                    'Estimate delivery',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Order Number',
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 157,
                  child: Text(
                    '21/09/2022',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Text(
                  '404-0121524-590191',
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 188, 212, 1),
                            Color.fromRGBO(0, 125, 141, 1)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/hand.png',
                        height: 19,
                        width: 19,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Divider(
                    color: Color.fromRGBO(0, 188, 212, 1),
                    thickness: 2,
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 33,
                        width: 33,
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(0, 188, 212, 1),
                                Color.fromRGBO(0, 125, 141, 1)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/truck.png',
                            height: 16,
                            width: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dispatched',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 125, 141, 1),
                          ),
                        ),
                      ),
                      Text(
                        '12.09',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 125, 141, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                      child: Divider(
                    color: Color.fromRGBO(0, 188, 212, 0.4),
                    thickness: 2,
                  )),
                  Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 188, 212, 0.5),
                            Color.fromRGBO(0, 125, 141, 0.5)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/check.png',
                        height: 14,
                        width: 14,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
