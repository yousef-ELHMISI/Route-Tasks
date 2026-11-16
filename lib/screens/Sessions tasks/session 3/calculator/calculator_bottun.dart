import 'package:first_flutter_app/screens/Sessions%20tasks/session%203/calculator/calculator_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnButtonClick = void Function(String);
class CalculatorBottun extends StatelessWidget {
  int? flex;
  Color? backgroundCloro;
  Color? textColor;
  String text;
  bool isIcon;
  Widget? item;
  OnButtonClick onButtonClick ;

  CalculatorBottun({this.flex , this.backgroundCloro,
    this.textColor,required this.text, this.isIcon=false, this.item,
    required this.onButtonClick
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: FloatingActionButton(
          backgroundColor: backgroundCloro ?? CalculatorColors.darkGreyColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            onPressed: () {
            //Todo: click => calling
              onButtonClick(text);
            },
            child: isIcon ? item:
            Text( text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
            color: textColor ?? CalculatorColors.lightBlueColor
          ),
        )),
      ),
    );
  }
}
