



import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/widgets/myappbar.dart';
import 'package:restoocom/presentation/widgets/myelevatedbutton.dart';
import 'package:restoocom/presentation/widgets/myiconbutton.dart';
import 'package:restoocom/presentation/widgets/mytextbutton.dart';
import 'package:restoocom/routes/heightwidth.dart';
import 'package:restoocom/routes/routes.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final List<TextEditingController> _controllers =
      List.generate(5, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(5, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    // Focus on the first TextField when the screen is opened
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNodes[1]);
    });
  }

  @override
  void dispose() {
    // Clean up the controllers and focus nodes when the widget is disposed
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1 && index < 4) {
      // Move to next field if a character is entered
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scbg,
      appBar: CustomAppBar(
        title: Image.asset(
          Appimages.logoimage,
          height: height * 0.060,
          width: width * 0.35,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.050),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: MyIconButton(
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Text(
                'Password Reset Code',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 33),
              ),
              SizedBox(height: height * 0.010),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'We sent a code to '),
                    TextSpan(
                      text: 'example@resto.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.020),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the row
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                      height: height * 0.10,
                      width: width * 0.15,
                      child: TextField(
                        // style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,

                        maxLength: 1, // Limit input to 1 character
                        controller: _controllers[index], // Assign controller
                        focusNode:
                            _focusNodes[index], // Set focus for each TextField
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                const BorderSide(color: AppColors.blueaccent),
                          ),
                          counterText: '', // Remove the character counter
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) =>
                            _onChanged(value, index), // Call onChanged
                      ),
                    ),
                  );
                }),
              ),
              MyElevatedButton(
                  textcolor: Colors.white,
                  onPressed: () {
                    Get.toNamed(Routes.setnewpassword);
                  },
                  text: 'Continue'),
              Center(
                child: MyTextButton(
                  child: RichText(
                    text: TextSpan(
                      text: "Didn't receive code?  ", // First text
                      style: const TextStyle(
                          color: AppColors.bitblack,
                          fontSize:
                              15), // Customize the style for the first part
                      children: [
                        TextSpan(
                          text:
                              'Click here to resend', // Second text as a clickable button
                          style: const TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Define what happens when the button text is tapped
                            },
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
