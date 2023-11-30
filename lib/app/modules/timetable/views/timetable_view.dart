import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';

import 'package:get/get.dart';

import '../../../data/utils.dart';
import '../controllers/timetable_controller.dart';

class TimetableView extends GetView<TimetableController> {
  const TimetableView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = Get.width / baseWidth;
    double ffem = fem * 0.97;
    final _controller = ValueNotifier('MON');
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            // begin: Alignment(2.115, -0.035),
            // end: Alignment(0.009, -2.053),
            colors: <Color>[Color(0xff2855ae), Color(0xff7292cf)],
            // stops: <double>[0, 1],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/erp-ui-kit/images/icback-9SR.png',
                        width: 14,
                        height: 21,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      // filtercNV (0:2719)
                      'Timetable',
                      style: SafeGoogleFont(
                        'Source Sans 3',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Expanded(
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 18,),
//...
                    Container(


                      decoration:BoxDecoration(
                          border: Border.all(color: Colors.black26),borderRadius: BorderRadius.all(Radius.circular(12))
                      ) ,
                      child: AdvancedSegment(
                      controller: _controller, // AdvancedSegmentController
                      segments: { // Map<String, String>
                        'MON': 'MON',
                        'TUE': 'TUE',
                        'WED': 'WED',
                        'THU': 'THU',
                        'FRI': 'FRI',
                        'SAT': 'SAT',

                      },backgroundColor: Colors.white,sliderOffset: 0.5,
                        sliderColor: Colors.blue,sliderDecoration: BoxDecoration(
               color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                  ),
                    ),
                        const SizedBox(height: 18,),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // liHU5 (0:2143)
                                    width: double.infinity,
                                    height: 110*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbgE8R (0:2144)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0.5*fem, 0.5*fem, 0.5*fem, 0.5*fem),
                                            width: 342.85*fem,
                                            height: 110*fem,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/erp-ui-kit/images/rectangle-aru.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              // rectangleVa9 (0:2146)
                                              child: SizedBox(
                                                width: 341.85*fem,
                                                height: 109*fem,
                                                child: Image.asset(
                                                  'assets/erp-ui-kit/images/rectangle-Njb.png',
                                                  width: 341.85*fem,
                                                  height: 109*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // computerscienceRih (0:2147)
                                          left: 15*fem,
                                          top: 13.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 110*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Computer Science',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff313131),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // am900amjDb (0:2148)
                                          left: 15*fem,
                                          top: 41.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 103*fem,
                                              height: 18*fem,
                                              child: Text(
                                                '08:15am - 9:00am',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // borderdJy (0:2149)
                                          left: 15*fem,
                                          top: 73.1309814453*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 312.85*fem,
                                              height: 1*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  color: Color(0xffdbdbdb),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // cherisejamesw4m (0:2150)
                                          left: 15*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 85*fem,
                                              height: 18*fem,
                                              child: Text(
                                                'Cherise James',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // period1S1X (0:2151)
                                          left: 277.7998046875*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 50*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Period 1',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12*fem,
                                  ),
                                  Container(
                                    // li477f (0:2170)
                                    width: double.infinity,
                                    height: 110*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbg4Svd (0:2171)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0.5*fem, 0.5*fem, 0.5*fem, 0.5*fem),
                                            width: 342.85*fem,
                                            height: 110*fem,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/erp-ui-kit/images/rectangle-Y6u.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              // rectangleYTs (0:2173)
                                              child: SizedBox(
                                                width: 341.85*fem,
                                                height: 109*fem,
                                                child: Image.asset(
                                                  'assets/erp-ui-kit/images/rectangle-HEq.png',
                                                  width: 341.85*fem,
                                                  height: 109*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // mathematicsfoP (0:2174)
                                          left: 15*fem,
                                          top: 13.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 81*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Mathematics ',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff313131),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // am0945amyZB (0:2175)
                                          left: 15*fem,
                                          top: 41.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 110*fem,
                                              height: 18*fem,
                                              child: Text(
                                                '09:00am - 09:45am',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // border4UVw (0:2176)
                                          left: 15*fem,
                                          top: 73.1309814453*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 312.85*fem,
                                              height: 1*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  color: Color(0xffdbdbdb),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rivkasteadmanyxV (0:2177)
                                          left: 15*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 95*fem,
                                              height: 18*fem,
                                              child: Text(
                                                'Rivka Steadman',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // period2s2H (0:2178)
                                          left: 277.7998046875*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 50*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Period 2',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12*fem,
                                  ),
                                  Container(
                                    // li2wXw (0:2152)
                                    width: double.infinity,
                                    height: 110*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbg2gVX (0:2153)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0.5*fem, 0.5*fem, 0.5*fem, 0.5*fem),
                                            width: 342.85*fem,
                                            height: 110*fem,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/erp-ui-kit/images/rectangle-Ech.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              // rectanglexxq (0:2155)
                                              child: SizedBox(
                                                width: 341.85*fem,
                                                height: 109*fem,
                                                child: Image.asset(
                                                  'assets/erp-ui-kit/images/rectangle-Krq.png',
                                                  width: 341.85*fem,
                                                  height: 109*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // englishVhs (0:2156)
                                          left: 15*fem,
                                          top: 13.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 44*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'English',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff313131),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // am1030amz8q (0:2157)
                                          left: 15*fem,
                                          top: 41.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 110*fem,
                                              height: 18*fem,
                                              child: Text(
                                                '09:45am - 10:30am',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // border2sTX (0:2158)
                                          left: 15*fem,
                                          top: 73.1309814453*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 312.85*fem,
                                              height: 1*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  color: Color(0xffdbdbdb),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // martamagananaV (0:2159)
                                          left: 15*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 83*fem,
                                              height: 18*fem,
                                              child: Text(
                                                'Marta Magana',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // period3VE1 (0:2160)
                                          left: 277.7998046875*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 50*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Period 3',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12*fem,
                                  ),
                                  Container(
                                    // li5B6q (0:2179)
                                    width: double.infinity,
                                    height: 77*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbg57mB (0:2180)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0.5*fem, 0.5*fem, 0.5*fem, 0.5*fem),
                                            width: 342.85*fem,
                                            height: 77*fem,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/erp-ui-kit/images/rectangle-w4M.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              // rectangle1rZ (0:2182)
                                              child: SizedBox(
                                                width: 341.85*fem,
                                                height: 76*fem,
                                                child: Image.asset(
                                                  'assets/erp-ui-kit/images/rectangle-foP.png',
                                                  width: 341.85*fem,
                                                  height: 76*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // lunchbreakYrV (0:2183)
                                          left: 15*fem,
                                          top: 13.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 75*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Lunch Break',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff313131),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // am1100amTCm (0:2184)
                                          left: 15*fem,
                                          top: 41.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 110*fem,
                                              height: 18*fem,
                                              child: Text(
                                                '10:30am - 11:00am',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // lunchbreak2Yzu (0:2185)
                                          left: 284.255859375*fem,
                                          top: 17.9514160156*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 37.58*fem,
                                              height: 39.05*fem,
                                              child: Image.asset(
                                                'assets/erp-ui-kit/images/lunchbreak-2.png',
                                                width: 37.58*fem,
                                                height: 39.05*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12*fem,
                                  ),
                                  Container(
                                    // li3DbF (0:2161)
                                    width: double.infinity,
                                    height: 110*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbg3NDF (0:2162)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0.5*fem, 0.5*fem, 0.5*fem, 0.5*fem),
                                            width: 342.85*fem,
                                            height: 110*fem,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/erp-ui-kit/images/rectangle-MUD.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              // rectangleG3j (0:2164)
                                              child: SizedBox(
                                                width: 341.85*fem,
                                                height: 109*fem,
                                                child: Image.asset(
                                                  'assets/erp-ui-kit/images/rectangle-WED.png',
                                                  width: 341.85*fem,
                                                  height: 109*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // sciencezEd (0:2165)
                                          left: 15*fem,
                                          top: 13.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 46*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Science',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff313131),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // am1145amgt9 (0:2166)
                                          left: 15*fem,
                                          top: 41.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 110*fem,
                                              height: 18*fem,
                                              child: Text(
                                                '11:00am - 11:45am',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // border3nRP (0:2167)
                                          left: 15*fem,
                                          top: 73.1309814453*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 312.85*fem,
                                              height: 1*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  color: Color(0xffdbdbdb),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // danicapartridgeW6V (0:2168)
                                          left: 15*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 97*fem,
                                              height: 18*fem,
                                              child: Text(
                                                'Danica Partridge',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // period4btd (0:2169)
                                          left: 277.7998046875*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 50*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Period 4',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12*fem,
                                  ),
                                  Container(
                                    // li6sr9 (0:2203)
                                    width: double.infinity,
                                    height: 110*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbg6pmP (0:2204)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0.5*fem, 0.5*fem, 0.5*fem, 0.5*fem),
                                            width: 342.85*fem,
                                            height: 110*fem,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/erp-ui-kit/images/rectangle-emo.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              // rectangleKy3 (0:2206)
                                              child: SizedBox(
                                                width: 341.85*fem,
                                                height: 109*fem,
                                                child: Image.asset(
                                                  'assets/erp-ui-kit/images/rectangle-Sjj.png',
                                                  width: 341.85*fem,
                                                  height: 109*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // socialstudyeEd (0:2207)
                                          left: 15*fem,
                                          top: 13.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 75*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Social Study',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff313131),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // am1230pmwDj (0:2208)
                                          left: 15*fem,
                                          top: 41.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 111*fem,
                                              height: 18*fem,
                                              child: Text(
                                                '11:45am - 12:30pm',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // border5dsF (0:2209)
                                          left: 15*fem,
                                          top: 73.1309814453*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 312.85*fem,
                                              height: 1*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  color: Color(0xffdbdbdb),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // cherisejames2N49 (0:2210)
                                          left: 15*fem,
                                          top: 82.3000488281*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 85*fem,
                                              height: 18*fem,
                                              child: Text(
                                                'Cherise James',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2857142857*ffem/fem,
                                                  color: Color(0xff777777),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // english2enM (0:2211)
                                          left: 283.7998046875*fem,
                                          top: 82.1000976562*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 44*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'English',
                                                style: SafeGoogleFont (
                                                  'Source Sans 3',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
