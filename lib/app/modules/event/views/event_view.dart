import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school/app/data/utils.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  const EventView({Key? key}) : super(key: key);

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
                      'Events & Programs',
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
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[350]!),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10, bottom: 4),
                                    child: Text(
                                      'Sleepover Night',
                                      style: SafeGoogleFont(
                                        'Source Sans 3',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: const Color(0xff313131),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Flex(
                                      direction: Axis.horizontal,
                                      children: [
                                        Flexible(
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            child: Image.asset(
                                              'assets/erp-ui-kit/images/rectangle-C9F.png',
                                              color: Colors.grey,
                                              fit: BoxFit.fill,
                                              width: 120,
                                              height: 90,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                ' ⏱ 06 Jan 21, 09:00 AM',
                                                style: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 13 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height:
                                                      1.4615384615 * ffem / fem,
                                                  color:
                                                      const Color(0xff6789ca),
                                                ),
                                              ),
                                              Text(
                                                'A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year. ',
                                                style: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 13 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      1.2307692308 * ffem / fem,
                                                  color:
                                                      const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
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
