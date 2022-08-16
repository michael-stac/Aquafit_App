import 'package:aquafit_app/Screens/DashboardScreen/dashboard.dart';
import 'package:aquafit_app/Screens/ResgistrationScreen/login_screen.dart';
import 'package:aquafit_app/Screens/ResgistrationScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controllers/OnboardingController/onboarding_controller.dart';
import '../../Styles/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Image(image: AssetImage("assets/images/logo.png")),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(
            left: 46.59, right: 46.59, top: 37, bottom: 67),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: controller.OnboardingPages.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          controller.OnboardingPages[index].title,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: AppColors.textHeader,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 52.6),
                        Image.asset(
                          controller.OnboardingPages[index].ImageAssets,
                        ),
                        const SizedBox(height: 73),
                        Text(
                          controller.OnboardingPages[index].description,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textHeader),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 51),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(controller.OnboardingPages.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: currentIndex == index
                            ? AppColors.splashScreen
                            : const Color(0xffC4C4C4),
                        shape: BoxShape.circle),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.splashScreen,
                    ),
                    padding: const EdgeInsets.only(
                        left: 41.75, right: 41.71, top: 14, bottom: 18),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xff0BCE83), width: 2)),
                    padding: const EdgeInsets.only(
                        left: 48.75, right: 48.71, top: 16, bottom: 16),
                    child: Text(
                      "Log In",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColors.splashScreen,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
