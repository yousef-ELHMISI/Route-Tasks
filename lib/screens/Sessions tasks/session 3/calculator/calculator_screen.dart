import 'package:first_flutter_app/screens/Sessions%20tasks/session%203/calculator/calculator_bottun.dart';
import 'package:first_flutter_app/screens/Sessions%20tasks/session%203/calculator/calculator_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName = 'calculator_screen';
  CalculatorScreen({Key? Key}) : super(key: Key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText = '' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CalculatorColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    resText,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: CalculatorColors.whiteColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  spacing: 18,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 18,
                              children: [
                                CalculatorBottun(backgroundCloro: CalculatorColors.lightGreyColor,
                                  textColor: CalculatorColors.whiteColor,
                                  text: 'Ac',onButtonClick: onClear,),
                                CalculatorBottun(backgroundCloro: CalculatorColors.lightGreyColor,
                                  textColor: CalculatorColors.whiteColor,
                                  text: '<',
                                  isIcon: true,
                                  onButtonClick: onBackSpace,
                                  item: Icon(Icons.backspace_outlined,
                                  color: CalculatorColors.whiteColor,
                                  ),
                                ),
                                CalculatorBottun(
                                    onButtonClick: onOperatorClick,
                                    backgroundCloro: CalculatorColors.darkBlueColor,
                                    text: '/',
                                    textColor: CalculatorColors.whiteColor),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 18,
                              children: [
                                CalculatorBottun(
                                  onButtonClick: onDigitClick,
                                  text: '7',),
                                CalculatorBottun( text: '8',
                                  onButtonClick: onDigitClick,),
                                CalculatorBottun(text: '9',
                                  onButtonClick: onDigitClick,),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 18,
                              children: [
                                CalculatorBottun( text: '4',
                                  onButtonClick: onDigitClick,),
                                CalculatorBottun( text: '5',onButtonClick: onDigitClick,),
                                CalculatorBottun(text: '6',onButtonClick: onDigitClick,),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 18,
                              children: [
                                CalculatorBottun( text: '1',onButtonClick: onDigitClick,),
                                CalculatorBottun( text: '2',onButtonClick: onDigitClick,),
                                CalculatorBottun( text: '3',onButtonClick: onDigitClick,),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 18,
                              children: [
                                CalculatorBottun( flex: 2, text: '0',onButtonClick: onDigitClick,),
                                CalculatorBottun( flex: 1 ,text: '.',onButtonClick: onDigitClick,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CalculatorBottun(
                            onButtonClick: onOperatorClick,
                            text: '*',
                            flex: 2,
                            backgroundCloro: CalculatorColors.darkBlueColor,
                            textColor: CalculatorColors.whiteColor,
                          ),
                          CalculatorBottun(
                            onButtonClick: onOperatorClick,
                            text: '-',
                            flex: 2,
                            backgroundCloro: CalculatorColors.darkBlueColor,
                            textColor: CalculatorColors.whiteColor,
                          ),
                          CalculatorBottun(
                            onButtonClick: onOperatorClick,
                            text: '+',
                            flex: 3,
                            backgroundCloro: CalculatorColors.darkBlueColor,
                            textColor: CalculatorColors.whiteColor,
                          ),
                          CalculatorBottun(
                            onButtonClick: onEqual,
                            text: '=',
                             flex: 3,
                            backgroundCloro: CalculatorColors.lightBlueColor,
                            textColor: CalculatorColors.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Todo: digits
  void onDigitClick(String text) {
    if (text == '.' && resText.contains('.')) {
      return;
    }
    resText += text;
    setState(() {

    });
  }

  //Todo: operator
  String lhs ='';
  String operator ='';
  void onOperatorClick(String operatorClick) {
    if(operator.isEmpty) {
    lhs = resText;

    } else {
      String rhs = resText;
      lhs = calculate(lhs,operator,rhs);


    }
    operator = operatorClick;
    resText ='';
    setState(() {

    });
  }
  String calculate(String lhs, String operator, String rhs) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res = 0.0;
    if(operator == '+') {
      res = num1 + num2 ;
    } else if (operator == '-') {
      res = num1 - num2;
    } else if (operator == '*') {
      res = num1 * num2 ;
    } else if (operator == '/') {
      res = num1 / num2;
    }
    return res.toString();
  }

  //Todo: equal
  void onEqual(String text){
    String rhs = resText;
    resText= calculate(lhs, operator, rhs);
    lhs ='';
    operator='';
    setState(() {

    });
  }

  //Todo: clear
  void onClear(String text){
    lhs='';
    operator='';
    resText='';
    setState(() {

    });
  }

  //Todo: backspace
  void onBackSpace(String text) {
    if(resText.isEmpty) {
      return;
    }
    resText = resText.substring(0,resText.length-1);
    setState(() {

    });
  }



}
