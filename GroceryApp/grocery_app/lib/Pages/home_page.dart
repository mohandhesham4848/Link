import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/sec_Page.dart';
import 'package:grocery_app/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 440,
              child: Image.asset(
                'assets/images/CreateAccount.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 505,
                child: Padding(
                  padding: const EdgeInsets.only(top: 28, left: 28, right: 28),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Create your account',
                            style: TextStyle(fontSize: 24),
                          ),
                          Spacer(),
                          GestureDetector(
                            child: SizedBox(
                              width: 28,
                              child: Image.asset('assets/images/ic_close.png'),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          TextFieldWidget(
                            color: Color(0xffE67F1E),
                            width: 170,
                            hintText: 'first name',
                            height: 45,
                          ),
                          Spacer(),
                          TextFieldWidget(
                            color: Color(0xffE67F1E),
                            width: 170,
                            hintText: 'last name',
                            height: 45,
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      TextFieldWidget(
                        hintText: 'rafatul3588@gmail.com',
                        width: double.infinity,
                        height: 80,
                        color: Color(0xffE67F1E),
                      ),
                      TextFieldWidget(
                        obscureText: true,
                        color: Color(0xffE67F1E),
                        hintText: 'Password',
                        width: double.infinity,
                        height: 100,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'By tapping Sign up you accept all \n',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'terms',
                              style: TextStyle(
                                color: Color(0xffE67F1E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'condition',
                              style: TextStyle(
                                color: Color(0xffE67F1E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecPage()),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFDC44B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'CREATE AN ACCOUNT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
