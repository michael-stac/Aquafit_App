import 'package:aquafit_app/Screens/HomePage/home_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../Styles/colors.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Set litres",
          style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xff4F4F4F),
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Color(0xff000000)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 171, bottom: 47),
              child: Column(
                children: [
                  Text(
                    "Select Litre Number",
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff4F4F4F)),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Set your target amount of litres you would consume today.",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff828282)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 79),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "1 Litre-4 cups",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xffBDBDBD)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 26),
                        const Padding(
                          padding: EdgeInsets.only(left: 45, right: 45),
                          child: Divider(thickness: 2),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "2 Litres - 8 cups",
                          style: GoogleFonts.poppins(
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff4F4F4F)),
                        ),
                        const SizedBox(height: 26),
                        const Padding(
                          padding: EdgeInsets.only(left: 45, right: 45),
                          child: Divider(thickness: 2),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "3 Litres - 12 cups",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffBDBDBD)),
                        ),
                        const SizedBox(height: 47),
                        Text(
                          "4 Litres - 16 cups",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffBDBDBD)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
             const SizedBox(height: 105),
            Padding(
              padding: const EdgeInsets.only(left: 32.75),
              child: Row(
                children: [
                  const Icon(Icons.not_interested_rounded),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 14.75, right: 80),
                    child: Text(
                      "Note that each cup drink is split into specific \n number of hours based on your selection.",
                      style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffBDBDBD)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 32),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.splashScreen,
                ),
                padding: const EdgeInsets.only(
                    left: 121, right: 114, top: 16, bottom: 16),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
