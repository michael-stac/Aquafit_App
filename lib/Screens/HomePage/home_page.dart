import 'package:aquafit_app/Screens/HomePage/onoridoe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Styles/colors.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(

        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 24, right: 192,),
                child: Text("Target Completed",
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: const Color(0xff4F4F4F),
                      fontWeight: FontWeight.w500),

                ),
              ),
              const SizedBox(height: 68.6),
              const Padding(
                padding: EdgeInsets.only(left: 46.59, right: 46.59),
                child: Image(
                    image:  AssetImage("assets/images/background.png")),
              ),
              const SizedBox(height: 111,),

              Padding(
                padding: const EdgeInsets.only(left: 59.4, right: 59.4),
                child: Text("You successfully drank 8 litres of water today.",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OnoriodeScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.splashScreen,
              ),
              padding: const EdgeInsets.only(
                  left: 133, right: 121, top: 14, bottom: 18),
              child: Text(
                "Continue",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
