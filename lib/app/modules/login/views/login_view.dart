import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school/app/data/utils.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28, top: 28),
                      child: Image.asset(
                        'assets/erp-ui-kit/images/vector.png',
                        // width: 294.59*fem,
                        // height: 131.37*fem,
                      ),
                    ),
                    Text(
                      'Hi Student',
                      style: SafeGoogleFont(
                        'Source Sans 3',
                        fontSize: 34 * ffem,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      // signintocontinueaYq (0:411)
                      'Sign in to continue',
                      style: SafeGoogleFont(
                        'Source Sans 3',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: controller.textController,
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
                              labelText: 'Mobile Number/Email',
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          TextFormField(
                            controller: controller.passController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Password';
                              }
                              return null; // Return null to indicate no error, otherwise return an error message.
                            },
                            obscureText: true,
                            style: SafeGoogleFont(
                              'Source Sans 3',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: const InputDecoration(
                                labelText: 'Password',
                                suffixIcon: Icon(Icons.remove_red_eye)),
                          ),
                          const SizedBox(
                            height: 38,
                          ),
                          InkWell(
                            onTap:(){
                              Get.toNamed(Routes.HOME);
                            },
                            child: Container(
                              width: 315,
                              height: 54,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xff2855ae),
                                    Color(0xff7292cf)
                                  ],
                                ),
                              ),
                              child: Flex(
                                direction: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  Text(
                                    'SIGN IN',
                                    style: SafeGoogleFont(
                                      'Source Sans 3',
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/erp-ui-kit/images/right.png',
                                    width: 30,
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 118 * fem,
                              height: 20 * fem,
                              child: Text(
                                'Forgot Password?',
                                style: SafeGoogleFont(
                                  'Source Sans 3',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25 * ffem / fem,
                                  color: const Color(0xff313131),
                                ),
                              ),
                            ),
                          )
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
