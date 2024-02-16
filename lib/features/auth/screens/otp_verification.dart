import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/round_button.dart';
import '/features/auth/screens/account_approved.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  static const routeName = '/otp-verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IosBackButton(
                  onPressed: Navigator.of(context).pop,
                ),
              ),
              const SizedBox(height: 20),
              // Register to get started
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.deepBlueColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter the verification code we just sent on your email address',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Text Field 1
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    //Text Field 2
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    //Text Field 3
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    //Text Field 4
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.deepBlueColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //text to rsend code
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn’t receive code?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' Resend again',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.deepBlueColor),
                    ),
                  ],
                ),
              ),

              //verify button
              const SizedBox(
                height: 350,
              ),
              RoundButton(
                label: 'Verify',
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AccountApproved.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
