import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school/app/data/utils.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      'assets/erp-ui-kit/images/icback-9SR.png',
                      width: 14,
                      height: 21,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      // filtercNV (0:2719)
                      'My Profile',
                      style: SafeGoogleFont(
                        'Source Sans 3',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Color(0xff6688ca),
                            size: 14,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "DONE",
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff6688ca),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12,bottom: 12),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/erp-ui-kit/images/dp.png',
                                  width: 75 ,
                                  height: 75 ,
                                ),
                                title: Text(
                                  'Akshay Syal',
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 22 ,
                                    fontWeight: FontWeight.w700,

                                    color: const Color(0xff000000),
                                  ),
                                ),
                                subtitle: Text(
                                  'Class XI-B  |  Roll no: 04',
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,

                                    color: const Color(0xff777777),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 19,),
                          Flex(direction: Axis.horizontal,
                          children: [
                            Flexible(
                              child: TextFormField(
                                controller: TextEditingController(text: "1234 4565 25112"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null; // Return null to indicate no error, otherwise return an error message.
                                },
                                style: SafeGoogleFont(
                                  'Source Sans 3',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Adhar No',
                                ),
                              ),
                            ),
                            const SizedBox(width: 18,),
                            Flexible(
                              child: TextFormField(
                                controller:TextEditingController(text: "2020-2021"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null; // Return null to indicate no error, otherwise return an error message.
                                },
                                style: SafeGoogleFont(
                                  'Source Sans 3',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Academic Year',
                                ),
                              ),
                            ),
                          ],),
                          const SizedBox(height: 12,),
                          Flex(direction: Axis.horizontal,
                            children: [
                              Flexible(
                                child: TextFormField(
                                  controller: TextEditingController(text: "VI"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null; // Return null to indicate no error, otherwise return an error message.
                                  },
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: const InputDecoration(
                                    labelText: 'Admission Class',suffixIcon: Icon(Icons.lock)
                                  ),
                                ),
                              ),const SizedBox(width: 18,),
                              Flexible(
                                child: TextFormField(
                                  controller:TextEditingController(text: "T00221"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null; // Return null to indicate no error, otherwise return an error message.
                                  },
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: const InputDecoration(
                                    labelText: 'Old Admission Number',suffixIcon: Icon(Icons.lock)
                                  ),
                                ),
                              ),
                            ],),
                          const SizedBox(height: 12,),
                          Flex(direction: Axis.horizontal,
                            children: [
                              Flexible(
                                child: TextFormField(
                                  controller: TextEditingController(text: "01 Apr 2018"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null; // Return null to indicate no error, otherwise return an error message.
                                  },
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: const InputDecoration(
                                      labelText: 'Date of Admission',suffixIcon: Icon(Icons.lock)
                                  ),
                                ),
                              ),const SizedBox(width: 18,),
                              Flexible(
                                child: TextFormField(
                                  controller:TextEditingController(text: "22 July 1996"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null; // Return null to indicate no error, otherwise return an error message.
                                  },
                                  style: SafeGoogleFont(
                                    'Source Sans 3',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: const InputDecoration(
                                      labelText: 'Date of Birth',suffixIcon: Icon(Icons.lock)
                                  ),
                                ),
                              ),
                            ],),
                          const SizedBox(height: 12,),
                          TextFormField(
                            controller:TextEditingController(text: "9854215252"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null; // Return null to indicate no error, otherwise return an error message.
                            },
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                                labelText: 'Mobile Number',suffixIcon: Icon(Icons.lock)
                            ),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            controller:TextEditingController(text: "Lisa"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null; // Return null to indicate no error, otherwise return an error message.
                            },
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                                labelText: 'Mother Name',suffixIcon: Icon(Icons.lock)
                            ),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            controller:TextEditingController(text: "Darvik"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null; // Return null to indicate no error, otherwise return an error message.
                            },
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                                labelText: 'Father Name',suffixIcon: Icon(Icons.lock)
                            ),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            controller:TextEditingController(text: "Kalavad Road Rajkot."),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null; // Return null to indicate no error, otherwise return an error message.
                            },
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                                labelText: 'Permanent Add.',suffixIcon: Icon(Icons.lock)
                            ),
                          ),
                          const SizedBox(height: 24,),
                        ],
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
