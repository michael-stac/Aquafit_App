import 'package:aquafit_app/Styles/colors.dart';
import 'package:aquafit_app/Widget/CustomDatePicker/date_picker_controller_provider.dart';
import 'package:aquafit_app/Widget/CustomDatePicker/horizontal_date_picker_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnoriodeScreen extends StatefulWidget {
  const OnoriodeScreen({Key? key}) : super(key: key);

  @override
  State<OnoriodeScreen> createState() => _OnoriodeScreenState();
}

class _OnoriodeScreenState extends State<OnoriodeScreen> {
  DatePickerController datePickerController = DatePickerController();

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    DateTime startDate = now.subtract(const Duration(days: 14));
    DateTime endDate = now.add(const Duration(days: 7));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Image(image: AssetImage("assets/images/logo.png")),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.notifications,
            color: Color(0xffDADADA),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 242, left: 28, top: 36.4),
            child: Text(
              "Your Activity",
              style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4F4F4F)),
            ),
          ),
          const SizedBox(height: 22.6),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: HorizontalDatePickerWidgetView(
              widgetWidth: MediaQuery.of(context).size.width,
              disabledColor: const Color(0xffFFFFFF),disabledTextColor: Color(0xff333333),
              selectedColor: const Color(0xff0BCE83),
              height: 140,
              locale: "en_US",
              selectedDate: DateTime.now(),
              endDate: endDate,
              startDate: startDate,
              datePickerController: datePickerController,
            ),
          )
        ],
      ),
    );
  }
}
