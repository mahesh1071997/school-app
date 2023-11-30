import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../../data/utils.dart';
import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);

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
                      'Result',
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
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      children: [
                        Center(
                          child: PopupMenuButton<int>(
                            itemBuilder: (context) => [
                              // PopupMenuItem 1
                              const PopupMenuItem(
                                value: 1,
                                // row with 2 children
                                child: Row(
                                  children: [
                                    Icon(Icons.pentagon_sharp),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Exam November")
                                  ],
                                ),
                              ),
                              // PopupMenuItem 2
                              const PopupMenuItem(
                                value: 2,
                                // row with two children
                                child: Row(
                                  children: [
                                    Icon(Icons.pentagon),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Exam January")
                                  ],
                                ),
                              ),
                            ],
                            // on selected we show the dialog box
                            onSelected: (value) {},
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2855ae),    border: Border.all(
                                    color: const Color(0xff2855ae), )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      " Select Exam ",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xff2855ae), )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.2),
                                    child: Row(
                                      children: [
                                        Text(
                                          "  First Exam ",
                                          style: SafeGoogleFont(
                                            'Source Sans 3',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 18,),
                        Table(
                          border: TableBorder.all(
                              color: Colors.black26,
                              width: 1.5,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(9))),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Text(
                                    "Subject",
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Text(
                                    "Mark",
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Text(
                                    "Grade",
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Text(
                                    "Comment",
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(
                                children: [
                                  Center(
                                    child: Text(
                                      "Maths",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "80",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "A",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "Very Good",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                                decoration:
                                    BoxDecoration(color: Colors.grey[200])),
                            TableRow(children: [
                              Center(
                                child: Text(
                                  "English",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "80",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "A",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Very Good",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(
                                children: [
                                  Center(
                                    child: Text(
                                      "Gujrati",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "80",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "A",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "Very Good",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                                decoration:
                                    BoxDecoration(color: Colors.grey[200])),
                            TableRow(children: [
                              Center(
                                child: Text(
                                  "Drawing",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "80",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "A",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Very Good",
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(
                                children: [
                                  Center(
                                    child: Text(
                                      "Science",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "80",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "A",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "Very Good",
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                                decoration:
                                    BoxDecoration(color: Colors.grey[200])),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xff2855ae),radius: 45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "591",
                                    style: SafeGoogleFont(
                                      'Source Sans 3', color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8),
                                    child: const Divider(color: Colors.white,thickness: 1.0,height: 2,),
                                  ),
                                  Text(
                                    "700",
                                    style: SafeGoogleFont(
                                      'Source Sans 3', color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff2855ae),radius: 45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "GPA",
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 20,
                                      color: Colors.white
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8),
                                    child: const Divider(color: Colors.white,thickness: 1.0,height: 2,),
                                  ),
                                  Text(
                                    "9.14",
                                    style: SafeGoogleFont(
                                      'Source Sans 3', color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff2855ae),radius: 45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pass",
                                    style: SafeGoogleFont(
                                      'Source Sans 3', color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "GPA : Grade Point Average",
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 20,color: Colors.black87
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
