import 'package:aquafit_app/Widget/CustomDatePicker/date_items.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';




class DateItemWidget extends StatelessWidget {
  ///display [DateTime]
  final DateTime dateTime;

  ///State of the date
  final DateItemState dateItemState;

  final String locale;

  ///padding of the item widget
  final double padding;

  final double width;
  final double height;

  final double? monthFontSize;
  final double? dayFontSize;
  final double? weekDayFontSize;
  final Color? normalColor;
  final Color? selectedColor;
  final Color? disabledColor;
  final Color? normalTextColor;
  final Color? selectedTextColor;
  final Color? disabledTextColor;

  final List<DateItem> dateItemComponentList;

  DateItemWidget({
    required this.dateTime,
    required this.dateItemState,
    required this.width,
    required this.height,
    required this.dateItemComponentList,
    required this.locale,
    this.padding = 0.0,
    this.normalColor,
    this.selectedColor,
    this.disabledColor,
    this.normalTextColor,
    this.selectedTextColor,
    this.disabledTextColor,
    this.monthFontSize,
    this.dayFontSize,
    this.weekDayFontSize,
  }) : assert(dateItemComponentList.isNotEmpty,
  'dateItemComponentList cannot be empty');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),

        child: Container(
            width: width + padding,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              color: _getContainerColorByState(dateItemState),

            ),
            padding: EdgeInsets.only(left: padding / 2, right: padding / 2, top: padding / 4),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              List<Widget>.generate(this.dateItemComponentList.length, (index) {
                switch (this.dateItemComponentList[index]) {
                  case DateItem.WeekDay:
                    return Container(
                      margin: EdgeInsets.only(bottom: 16,),
                      child: Text(DateFormat.E(this.locale).format(this.dateTime),
                          style: TextStyle(
                              color: _getTextColorByState(dateItemState),
                              fontSize: this.weekDayFontSize,
                              fontWeight: _getTextWeightByState(dateItemState))),
                    );
                  case DateItem.Day:
                    return Container(

                      margin: EdgeInsets.only(bottom: 16, ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          DateFormat.d().format(this.dateTime),
                          style: TextStyle(
                              color: _getTextColorByState(dateItemState),
                              fontSize: dayFontSize,
                              fontWeight: _getTextWeightByState(dateItemState)),
                        ),
                      ),
                    );
                  // case DateItem.Month:
                  //   return Text(
                  //     DateFormat.MMM(this.locale).format(this.dateTime),
                  //     style: TextStyle(
                  //         color: _getTextColorByState(dateItemState),
                  //         fontSize: this.monthFontSize,
                  //         fontWeight: _getTextWeightByState(dateItemState)),
                  //   );
                  default:
                    return Container();
                }
              }),
            ),
        ),
      ),
    );
  }

  Color? _getContainerColorByState(DateItemState state) {
    switch (state) {
      case DateItemState.ACTIVE:
        return normalColor;
      case DateItemState.SELECTED:
        return selectedColor;
      default:
        return disabledColor;
    }
  }

  Color? _getTextColorByState(DateItemState state) {
    switch (state) {
      case DateItemState.ACTIVE:
        return normalTextColor;
      case DateItemState.SELECTED:
        return selectedTextColor;
      default:
        return disabledTextColor;
    }
  }

  FontWeight _getTextWeightByState(DateItemState state) {
    switch (state) {
      case DateItemState.ACTIVE:
        return FontWeight.bold;
      case DateItemState.SELECTED:
        return FontWeight.bold;
      default:
        return FontWeight.normal;
    }
  }
}
