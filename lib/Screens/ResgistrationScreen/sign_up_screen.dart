import 'package:aquafit_app/Screens/DashboardScreen/dashboard.dart';
import 'package:aquafit_app/Widget/custom_input_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding:
              const EdgeInsets.only(top: (275.5 - 80), right: 24, left: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Image(
                      image: AssetImage("assets/images/cancle.png"))),
              const SizedBox(
                height: 79,
              ),
              Text(
                "To get started,please enter your details below",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: const Color(0xff4F4F4F)),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomInputField(
                    controller: usernameController,
                    hint: "Username",
                  ),
                  CustomInputField(
                    controller: emailController,
                    hint: "Email",
                  ),
                  CustomInputField(
                    controller: passwordController,
                    hint: "Password",
                  ),
                ],
              ),
              const SizedBox(
                height: 31,
              ),
              Row(
                children: [
                  Text(
                    "Have an account yet?",
                    style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff4F4F4F)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff0BCE83)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 51,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashBoardScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff0BCE83),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 16, right: 130.5, left: 130.5),
                      child: Text(
                        "SignUp",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffFFFFFF)),
                      ),
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
