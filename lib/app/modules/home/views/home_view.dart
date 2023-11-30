import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school/app/routes/app_pages.dart';

import '../../../data/utils.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = Get.width / baseWidth;
    double ffem = fem * 0.97;

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
                padding: const EdgeInsets.all(12.0),
                child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // hiakshayrXs (0:1254)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 9 * fem),
                            child: Text(
                              'Hi Akshay',
                              style: SafeGoogleFont(
                                'Source Sans 3',
                                fontSize: 30 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2666666667 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // classxibrollno04xL1 (0:1253)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 10 * fem),
                            child: Text(
                              'Class XI-B  |  Roll no: 04',
                              style: SafeGoogleFont(
                                'Source Sans 3',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2777777778 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupxzkhrwB (H354oRmaJWAhdPDiibxzKH)
                            width: 84 * fem,
                            height: 24 * fem,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/erp-ui-kit/images/rectangle2388.png',
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '2020-2021',
                                style: SafeGoogleFont(
                                  'Source Sans 3',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2857142857 * ffem / fem,
                                  color: const Color(0xff6184c7),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          maxRadius: 35,
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 19,
              ),
              Expanded(
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.HOMEWORK);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // icassignmentdVK (0:1451)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 21.59 * fem),
                                        width: 28.07 * fem,
                                        height: 40.43 * fem,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/icassignment.png',
                                          width: 28.07 * fem,
                                          height: 40.43 * fem,
                                        ),
                                      ),
                                      Container(
                                        // assignment2YMP (0:1450)
                                        margin: EdgeInsets.fromLTRB(0.48 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Home Work',
                                          style: SafeGoogleFont(
                                            'Source Sans 3',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2777777778 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width / 3.9,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.ATTENDANCE);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // icassignmentdVK (0:1451)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 21.59 * fem),
                                        width: 28.07 * fem,
                                        height: 40.43 * fem,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/icdatesheet.png',
                                          width: 28.07 * fem,
                                          height: 40.43 * fem,
                                        ),
                                      ),
                                      Container(
                                        // assignment2YMP (0:1450)
                                        margin: EdgeInsets.fromLTRB(0.48 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Attendance',
                                          style: SafeGoogleFont(
                                            'Source Sans 3',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2777777778 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 42,
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.TIMETABLE);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // icassignmentdVK (0:1451)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 21.59 * fem),
                                        width: 28.07 * fem,
                                        height: 40.43 * fem,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/iccalendra.png',
                                          width: 28.07 * fem,
                                          height: 40.43 * fem,
                                        ),
                                      ),
                                      Container(
                                        // assignment2YMP (0:1450)
                                        margin: EdgeInsets.fromLTRB(0.48 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Time Table',
                                          style: SafeGoogleFont(
                                            'Source Sans 3',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2777777778 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width / 3.9,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // icassignmentdVK (0:1451)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 21.59 * fem),
                                      width: 28.07 * fem,
                                      height: 40.43 * fem,
                                      child: Image.asset(
                                        'assets/erp-ui-kit/images/icgallery.png',
                                        width: 28.07 * fem,
                                        height: 40.43 * fem,
                                      ),
                                    ),
                                    Container(
                                      // assignment2YMP (0:1450)
                                      margin: EdgeInsets.fromLTRB(0.48 * fem,
                                          0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'Gallery',
                                        style: SafeGoogleFont(
                                          'Source Sans 3',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2777777778 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 42,
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.RESULT);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // icassignmentdVK (0:1451)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 21.59 * fem),
                                        width: 28.07 * fem,
                                        height: 40.43 * fem,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/icresults.png',
                                          width: 28.07 * fem,
                                          height: 40.43 * fem,
                                        ),
                                      ),
                                      Container(
                                        // assignment2YMP (0:1450)
                                        margin: EdgeInsets.fromLTRB(0.48 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Result       ',
                                          style: SafeGoogleFont(
                                            'Source Sans 3',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2777777778 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width / 3.4,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.EVENT);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // icassignmentdVK (0:1451)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 21.59 * fem),
                                        width: 28.07 * fem,
                                        height: 40.43 * fem,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/icevent.png',
                                          width: 28.07 * fem,
                                          height: 40.43 * fem,
                                        ),
                                      ),
                                      Container(
                                        // assignment2YMP (0:1450)
                                        margin: EdgeInsets.fromLTRB(0.48 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Event',
                                          style: SafeGoogleFont(
                                            'Source Sans 3',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2777777778 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
