import 'package:aquafit_app/Screens/DashboardScreen/dashboard.dart';
import 'package:aquafit_app/Screens/ResgistrationScreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widget/custom_inputField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final key = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top:  80, right: 24, left: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);

                },
                  child: const Image(image: AssetImage("assets/images/cancle.png"))),
              const SizedBox(
                height: 79,
              ),
              Text(
                "To get started, \n please enter your details below",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: const Color(0xff4F4F4F)),
              ),
              const SizedBox(height: 35,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomInputField(
                    hint: "Username",
                    controller: usernameController,
                  ),
                  CustomInputField(
                    controller: emailController,
                    hint: "Email",
                  ),
                  CustomInputField(
                    controller: passwordController,
                    hint: " Password",
                  ),
                  CustomInputField(
                    controller: emailController,
                    hint: " Confirm Password",
                  ),
                ],
              ),
              const SizedBox(height: 31,),
              Row(
                children: [
                  Text("Have an account yet?",
                    style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff4F4F4F)),

                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      },
                      child: Text("Login",
                        style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff0BCE83)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 51,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashBoardScreen()));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 47),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff0BCE83),
                    borderRadius: BorderRadius.circular(10),

                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16 ),
                    child: Text("Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
