import 'package:aquafit_app/Widget/CustomDatePicker/date_picker_controller_provider.dart';
import 'package:aquafit_app/Widget/CustomDatePicker/horizontal_date_picker_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/colors.dart';

class OnoriodeScreen extends StatefulWidget {
  const OnoriodeScreen({Key? key}) : super(key: key);

  @override
  State<OnoriodeScreen> createState() => _OnoriodeScreenState();
}

class _OnoriodeScreenState extends State<OnoriodeScreen> {
  DatePickerController datePickerController = DatePickerController();
  var now = DateTime.now();
  DateTime startDate = DateTime(2021).subtract(const Duration(days: 14));
  DateTime endDate = DateTime(2023).add(const Duration(days: 7));

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Image(image: AssetImage("assets/images/logo.png")),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Icon(
              Icons.notifications,
              color: Color(0xffDADADA),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: HorizontalDatePickerWidgetView(
                widgetWidth: MediaQuery.of(context).size.width,
                disabledColor: const Color(0xffFFFFFF),
                disabledTextColor: const Color(0xff333333),
                selectedColor: const Color(0xffFFFFFF),
                height: 140,
                locale: "en_US",
                selectedDate: DateTime.now(),
                endDate: endDate,
                startDate: startDate,
                datePickerController: datePickerController,
              ),
            ),
            const SizedBox(height: 36.6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Text(
                    "Current Progress",
                    style: TextStyles.semiBold(16, const Color(0xff4F4F4F)),
                  ),
                ),
                const SizedBox(height: 26),
                Container(
                  padding: const EdgeInsets.all(32),
                  margin: const EdgeInsets.symmetric(horizontal: 29),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color(0xffEB5757)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        title: Text(
                          "3rd Cup",
                          style: TextStyles.semiBold(24, const Color(0xffFFFFFF)),
                        ),
                        subtitle: Text(
                          "You’re doing great, Jonathan",
                          style: TextStyles.normal(10, const Color(0xffFFFFFF)),
                        ),
                        trailing: const Image(
                            image: AssetImage("assets/images/cup.png")),
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("5 more cups remaining",
                              style:
                                  TextStyles.normal(10, const Color(0xffFFFFFF))),
                          Text(
                            "00 : 00",
                            style: TextStyles.normal(10, const Color(0xffFFFFFF)),
                          )
                        ],
                      ),
                      ..._dividerWidgets,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(right: 10.64),
                               child: Image(image: AssetImage("assets/images/good.png")),
                             ),
                             Text("Complete",
                                 style: TextStyles.normal(12, const Color(0xffFFFFFF))

                             )
                           ],
                         ),
                          Row(
                            children: [
                              Text("Next Cup",
                                style: TextStyles.normal(12, const Color(0xffFFFFFF))
                              ),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,)
                            ],
                          )

                        ],
                      )

                    ],
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 29),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color(0xff2F80ED)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        title: Text(
                          "10 Hours",
                          style: TextStyles.semiBold(24, const Color(0xffFFFFFF)),
                        ),
                        subtitle: Text(
                          "Total time spent today",
                          style: TextStyles.normal(10, const Color(0xffFFFFFF)),
                        ),
                        trailing: const Image(
                            image: AssetImage("assets/images/time.png")),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> get _dividerWidgets => [
    const SizedBox(height: 16),
    const Divider(color: Colors.white, thickness: 1),
    const  SizedBox(height: 15),
  ];

}
