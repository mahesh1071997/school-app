import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils.dart';
import '../controllers/homework_controller.dart';

class HomeworkView extends GetView<HomeworkController> {
  const HomeworkView({Key? key}) : super(key: key);

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
                      width: 12,
                    ),
                    Text(
                      // filtercNV (0:2719)
                      'Home Work',
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
                height: 39,
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
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const SizedBox(height: 12,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(18)) ,
                            border: Border.all(color: Colors.black26)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text(
                                    'Mathematics',
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff2855ae),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue[50],
                                ),
                                Text(
                                  'Surface Areas and Volumes',
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: Color(0xff313131),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Assign Date',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2857142857 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),

                                    ),
                                    Text(
                                      '10 Nov 20',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Last Submission Date',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2857142857 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                    Text(
                                      '10 Dec 20',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    )

                                  ],
                                ),
                                const SizedBox(height: 8,),
                              Flex(
                                direction: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Chip(
                                    label: Text(
                                      'image name..',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    backgroundColor: Colors.blue[50],shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                  ),
                                  Chip(
                                    label: Text(
                                      'image name..',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    backgroundColor: Colors.blue[50],shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                  ),
                                  Chip(
                                    label: Text(
                                      'more images',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    backgroundColor: Colors.white,shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue[100]!)),
                                  ),
                                ],
                              )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(18)) ,
                              border: Border.all(color: Colors.black26)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text(
                                    'Science',
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff2855ae),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue[50],
                                ),
                                Text(
                                  'Structure of Atoms',
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: Color(0xff313131),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Assign Date',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2857142857 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),

                                    ),
                                    Text(
                                      '10 Nov 20',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Last Submission Date',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2857142857 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                    Text(
                                      '30 Dec 20',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    )

                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Flex(
                                  direction: Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Chip(
                                      label: Text(
                                        'image name..',
                                        style: SafeGoogleFont(
                                          'Source Sans 3',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      backgroundColor: Colors.blue[50],shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                    ),
                                    const SizedBox(width: 19,),
                                    Chip(
                                      label: Text(
                                        'image name..',
                                        style: SafeGoogleFont(
                                          'Source Sans 3',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      backgroundColor: Colors.blue[50],shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(18)) ,
                              border: Border.all(color: Colors.black26)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Chip(
                                  label: Text(
                                    'English',
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff2855ae),
                                    ),
                                  ),
                                  backgroundColor: Colors.blue[50],
                                ),
                                Text(
                                  'My Bestfriend Easy',
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: Color(0xff313131),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Assign Date',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2857142857 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),

                                    ),
                                    Text(
                                      '10 Nov 20',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Last Submission Date',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2857142857 * ffem / fem,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                    Text(
                                      '30 Dec 20',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xff3a3a3a),
                                      ),
                                    )

                                  ],
                                ),
                                const SizedBox(height: 8,),
                              ],
                            ),
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
    );
  }
}
