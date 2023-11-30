import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../data/utils.dart';
import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CalendarFormat calendarFormat = CalendarFormat.month;
    RangeSelectionMode rangeSelectionMode = RangeSelectionMode
        .toggledOff; // Can be toggled on/off by longpressing a date
    DateTime focusedDay = DateTime.now();
    DateTime? selectedDay;
    DateTime? rangeStart;
    DateTime? rangeEnd;
    final controllerValue = ValueNotifier('Attendance');

    List<Event> _getEventsForDay(DateTime day) {
      // Implementation example
      return kEvents[day] ?? [];
    }

    return Scaffold(
      body: GetBuilder(
        id: 'UpdateAttendance',
        init: AttendanceController(),
        builder: (context) {
          return Container(
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
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/erp-ui-kit/images/icback-9SR.png',
                              width: 14,
                              height: 21,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff7292cf)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child:  InkWell(
                              onTap: (){
                                controller.update(['UpdateAttendance']);
                              },
                              child: AdvancedSegment(
                                controller: controllerValue,
                                // AdvancedSegmentController
                                segments: const {
                                  // Map<String, String>
                                  'Attendance': 'Attendance',
                                  'Holiday': 'Holiday',
                                },
                                sliderOffset: 0.5,
                                sliderColor: Colors.white,
                                backgroundColor: const Color(0xff7292cf),
                                sliderDecoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  ValueListenableBuilder<String>(
                    valueListenable: controllerValue,
                    builder: (_, key, __) {
                      switch (key) {
                        case 'Attendance':
                          return   Expanded(
                            child: Container(
                              width: Get.width,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(34),
                                      topRight: Radius.circular(34))),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        TableCalendar<Event>(
                                          firstDay: kFirstDay,
                                          lastDay: kLastDay,
                                          focusedDay: focusedDay,
                                          selectedDayPredicate: (day) =>
                                              isSameDay(selectedDay, day),
                                          rangeStartDay: rangeStart,
                                          rangeEndDay: rangeEnd,
                                          calendarFormat: calendarFormat,
                                          rangeSelectionMode: rangeSelectionMode,
                                          startingDayOfWeek: StartingDayOfWeek.monday,
                                          calendarStyle: CalendarStyle(
                                            // Use `CalendarStyle` to customize the UI
                                              outsideDaysVisible: false,
                                              defaultTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              disabledTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              todayTextStyle: SafeGoogleFont('Source Sans 3',
                                                  fontSize: 17, color: Colors.black87),
                                              holidayTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              outsideTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              rangeEndTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              rangeStartTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              selectedTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              weekendTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              weekNumberTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),
                                              withinRangeTextStyle: SafeGoogleFont(
                                                  'Source Sans 3',
                                                  fontSize: 17,
                                                  color: Colors.black87),todayDecoration: BoxDecoration(color: Colors.redAccent,shape: BoxShape.circle)
                                          ),
                                          onFormatChanged: (format) {},
                                          onPageChanged: (focusedDay) {},
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "List of Holiday",
                                          style: SafeGoogleFont('Source Sans 3',
                                              fontSize: 20, color: Colors.black87),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Expanded(
                                          child: ListView.builder(
                                              itemCount: 1,
                                              itemBuilder: (_, index) {
                                                return Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            right: BorderSide(color: Colors.redAccent),top: BorderSide(color: Colors.redAccent),bottom: BorderSide(color: Colors.redAccent),
                                                            left: BorderSide(color: Colors.redAccent,width: 10)
                                                        ),
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(12))),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child:    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Absent",
                                                            style: SafeGoogleFont(
                                                                'Source Sans 3',
                                                                fontSize: 17,
                                                                color: Colors.redAccent),
                                                          ),
                                                          CircleAvatar(
                                                            backgroundColor: Colors.red[100],
                                                            child: Text(
                                                              "02",
                                                              style: SafeGoogleFont(
                                                                  'Source Sans 3',
                                                                  fontSize: 17,
                                                                  color: Colors.redAccent),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    // vector21F (0:1681)
                                    bottom: 0,
                                    child: Align(
                                      child: SizedBox(
                                        width: Get.width,
                                        height: 131.84,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/vector-sfw.png',
                                          fit: BoxFit.fill,
                                          height: 131.84,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        case 'Holiday':
                          return  Expanded(
                            child: Container(
                              width: Get.width,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(34),
                                      topRight: Radius.circular(34))),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        TableCalendar<Event>(
                                          firstDay: kFirstDay,
                                          lastDay: kLastDay,
                                          focusedDay: focusedDay,
                                          selectedDayPredicate: (day) => isSameDay(selectedDay, day),
                                          rangeStartDay: rangeStart,
                                          rangeEndDay: rangeEnd,
                                          calendarFormat: calendarFormat,
                                          rangeSelectionMode: rangeSelectionMode,
                                          startingDayOfWeek: StartingDayOfWeek.monday,
                                          calendarStyle:  CalendarStyle(
                                            // Use `CalendarStyle` to customize the UI
                                            outsideDaysVisible: false,
                                            defaultTextStyle:  SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            disabledTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            todayTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            holidayTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),outsideTextStyle: SafeGoogleFont(
                                              'Source Sans 3',
                                              fontSize: 17,color: Colors.black87
                                          ),
                                            rangeEndTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            rangeStartTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            selectedTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            weekendTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            weekNumberTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),
                                            withinRangeTextStyle: SafeGoogleFont(
                                                'Source Sans 3',
                                                fontSize: 17,color: Colors.black87
                                            ),

                                          ),
                                          onFormatChanged: (format) {
                                          },
                                          onPageChanged: (focusedDay) {
                                          },
                                        ),
                                        const SizedBox(height: 8,),
                                        Text(
                                          "List of Holiday",
                                          style: SafeGoogleFont(
                                              'Source Sans 3',
                                              fontSize: 20,color: Colors.black87
                                          ),
                                        ),

                                        const SizedBox(height: 12,),

                                        Expanded(
                                          child: ListView.builder(
                                              itemCount: 1,
                                              itemBuilder: (_,index){
                                                return Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                                                        color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(12))),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("Diwali",style:SafeGoogleFont(
                                                              'Source Sans 3',fontWeight: FontWeight.w600,
                                                              fontSize: 17,color: Colors.black87
                                                          ) ,),
                                                          const SizedBox(height: 8,),
                                                          Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("14th November",style:SafeGoogleFont(
                                                                  'Source Sans 3',
                                                                  fontSize: 17,color: Colors.black87
                                                              ) ,),
                                                              Text("Monday",style:SafeGoogleFont(
                                                                  'Source Sans 3',
                                                                  fontSize: 17,color: Colors.black87
                                                              ) ,),
                                                            ],
                                                          )

                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                        )

                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    // vector21F (0:1681)
                                    bottom: 0,
                                    child: Align(
                                      child: SizedBox(
                                        width: Get.width,
                                        height: 131.84,
                                        child: Image.asset(
                                          'assets/erp-ui-kit/images/vector-sfw.png',

                                          fit: BoxFit.fill,
                                          height: 131.84,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        default:
                          return const SizedBox();
                      }
                    },
                  ),

                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = {
  for (var item in List.generate(50, (index) => index))
    DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5): List.generate(
        item % 4 + 1, (index) => Event('Event $item | ${index + 1}'))
}..addAll({
    kToday: [
      const Event('Today\'s Event 1'),
      const Event('Today\'s Event 2'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
