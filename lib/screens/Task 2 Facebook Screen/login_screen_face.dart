import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/home_screen_face.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreenFace extends StatefulWidget {
  static const String routeName = 'login_screen';

  @override
  State<LoginScreenFace> createState() => _LoginScreenFaceState();
}

GlobalKey<FormState> formState = GlobalKey();

class _LoginScreenFaceState extends State<LoginScreenFace> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formState,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 100,
                          height: 100,
                        ),

                        SizedBox(height: 16),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Please Enter Phone No. or Email';
                              }

                              String input = value.trim();

                              bool isEgyptianPhone =
                                  input.length == 11 &&
                                  (input.startsWith('010') ||
                                      input.startsWith('011') ||
                                      input.startsWith('012') ||
                                      input.startsWith('015')) &&
                                  int.tryParse(input) != null;

                              bool isEmail =
                                  input.contains('@') &&
                                  input.endsWith('.com') &&
                                  !input.startsWith('@') &&
                                  !input.contains(' ');

                              if (!isEgyptianPhone && !isEmail) {
                                return 'Invalid email address or mobile number';
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0X55D6DFF1),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0XFF898F9C),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0XFF898F9C),
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.all(16),
                              hint: Text(
                                'Mobile Number Or Email Address',
                                style: TextStyle(color: Color(0XF1898F9C)),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }

                              if (value.length < 8) {
                                return 'Password must be at least 8 characters';
                              }

                              bool hasLetter = false;
                              bool hasNumber = false;
                              bool hasSymbol = false;

                              String letters =
                                  'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                              String numbers = '0123456789';

                              for (int i = 0; i < value.length; i++) {
                                String char = value[i];

                                if (letters.contains(char)) {
                                  hasLetter = true;
                                } else if (numbers.contains(char)) {
                                  hasNumber = true;
                                } else if (char != ' ') {
                                  hasSymbol = true;
                                }
                              }

                              if (!hasLetter || !hasNumber || !hasSymbol) {
                                return 'Password must contain letters, numbers, and symbols';
                              }

                              return null;
                            },
                            obscureText: isObscure,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                                icon: Icon(
                                  isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0X55D6DFF1),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0XFF898F9C),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0XFF898F9C),
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.all(16),
                              hint: Text(
                                'Password',
                                style: TextStyle(color: Color(0XF1898F9C)),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                          child: ElevatedButton(
                            onPressed: () {
                              if (formState.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  HomeScreenFace.routeName,
                                );
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: Color(0XFFFFFFFF)),
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              backgroundColor: Color(0XFF1877F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            overlayColor: Colors.transparent,
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            'Forgotten Password ?',
                            style: TextStyle(color: Color(0XFF898F9C)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Creat Account',
                      style: TextStyle(color: Color(0XFF1877F2)),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Color(0XFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0XFF1877F2)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),

                Image.asset('assets/images/meta.png', width: 100, height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
