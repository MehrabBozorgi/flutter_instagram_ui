import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/screens/login_screen.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: DropdownButton<String>(
                  hint: const Text('English(United State)'),
                  items: <String>[
                    'English(United State)',
                    'English(British)',
                    'France',
                    'Persian(Iran)',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.grey[700], fontFamily: 'roboto'),
                      ),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              SizedBox(height: 100),
              Image.asset(
                'assets/images/logo/Instagram_Logo_2016.png',
                width: 175,
              ),
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                height: 50,
                // margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.blueAccent, borderRadius: BorderRadius.circular(7.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 22.5,
                      height: 22.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(150)),
                      child: const Text(
                        'f',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[800],
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[800],
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'sign up with email or phone number',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have account?',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: const Text('Log in'))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
