import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/screens/bottom_nav_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(),
              //     IconButton(
              //       onPressed: () {
              // Navigator.pop(context);
              //       },
              //       icon: Icon(Icons.close),
              //     ),
              //   ],
              // ),

              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/logo/Instagram_Logo_2016.png',
                width: 175,
              ),

              Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Phone Number , Username or Email',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE0E0E0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE0E0E0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Forget Paasword!',
                      style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: const Size(double.maxFinite, 50),backgroundColor: Colors.blue),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBarScreen(),
                    ),
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BottomNavBarScreen(),
                  //   ),
                  // );
                },
                child:  Text('Log in',style: TextStyle(color: Colors.white),),
              ),

              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreen(),));
              //   },
              //   child: Container(
              //     width: double.infinity,
              //     height: 50,
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //         color: Colors.blueAccent, borderRadius: BorderRadius.circular(7.5)),
              //     child: const Text(
              //       'Log in',
              //       style: TextStyle(color: Colors.white, fontSize: 16),
              //     ),
              //   ),
              // ),
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
                        padding: const EdgeInsets.all(10),
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
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook_outlined),
                    label: const Text(
                      'continue with mike smith',
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
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont have account?',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Sign up'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
