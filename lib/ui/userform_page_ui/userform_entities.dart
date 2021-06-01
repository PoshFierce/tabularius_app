import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../special_entities/nav_service.dart';
import '../special_entities/constants.dart';
import '../../core/domain/models/intro_page/text_field_model.dart';
import '../../core/domain/processes/get_result.dart';

TextField inputParamTextField1 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam1,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: inputStyle,
    decoration: inputDecorationParam1,
    cursorColor: frontColor);

TextField inputParamTextField2 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam2,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: inputStyle,
    decoration: inputDecorationParam2,
    cursorColor: frontColor);

TextField inputParamTextField3 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam3,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: inputStyle,
    decoration: inputDecorationParam3,
    cursorColor: frontColor);

TextField inputParamTextField4 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam4,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: inputStyle,
    decoration: inputDecorationParam4,
    cursorColor: frontColor);

TextField inputParamTextField5 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam5,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: inputStyle,
    decoration: inputDecorationParam5,
    cursorColor: frontColor);

TextField errorInputParamTextField1 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam1,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: errorInputStyle,
    decoration: errorInputDecorationParam1,
    cursorColor: errorColor);

TextField errorInputParamTextField2 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam2,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: errorInputStyle,
    decoration: errorInputDecorationParam2,
    cursorColor: errorColor);

TextField errorInputParamTextField3 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam3,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: errorInputStyle,
    decoration: errorInputDecorationParam3,
    cursorColor: errorColor);

TextField errorInputParamTextField4 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam4,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: errorInputStyle,
    decoration: errorInputDecorationParam4,
    cursorColor: errorColor);

TextField errorInputParamTextField5 = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*$|^[0]$'))
    ],
    controller: validatorParam5,
    keyboardType: TextInputType.phone,
    maxLength: 7,
    style: errorInputStyle,
    decoration: errorInputDecorationParam5,
    cursorColor: errorColor);

Container inputContainer1 = Container(
  child: StreamBuilder<bool>(
    stream: theInputParamModel.inputParamChannel,
    builder: (context, snapshot) {
      if (validatorParam1.text.length == 0 && snapshot.data == false) {
        return errorInputParamTextField1;
      } else {
        return inputParamTextField1;
      }
    },
  ),
);

Container inputContainer2 = Container(
  child: StreamBuilder<bool>(
    stream: theInputParamModel.inputParamChannel,
    builder: (context, snapshot) {
      if (validatorParam2.text.length == 0 && snapshot.data == false) {
        return errorInputParamTextField2;
      } else {
        return inputParamTextField2;
      }
    },
  ),
);

Container inputContainer3 = Container(
  child: StreamBuilder<bool>(
    stream: theInputParamModel.inputParamChannel,
    builder: (context, snapshot) {
      if (validatorParam3.text.length == 0 && snapshot.data == false) {
        return errorInputParamTextField3;
      } else {
        return inputParamTextField3;
      }
    },
  ),
);

Container inputContainer4 = Container(
  child: StreamBuilder<bool>(
    stream: theInputParamModel.inputParamChannel,
    builder: (context, snapshot) {
      if (validatorParam4.text.length == 0 && snapshot.data == false) {
        return errorInputParamTextField4;
      } else {
        return inputParamTextField4;
      }
    },
  ),
);

Container inputContainer5 = Container(
  child: StreamBuilder<bool>(
    stream: theInputParamModel.inputParamChannel,
    builder: (context, snapshot) {
      if (validatorParam5.text.length == 0 && snapshot.data == false) {
        return errorInputParamTextField5;
      } else {
        return inputParamTextField5;
      }
    },
  ),
);

TextEditingController validatorParam1 = TextEditingController();
TextEditingController validatorParam2 = TextEditingController();
TextEditingController validatorParam3 = TextEditingController();
TextEditingController validatorParam4 = TextEditingController();
TextEditingController validatorParam5 = TextEditingController();

OutlineButton nextButton1 = OutlineButton(
  highlightColor: backColor,
  borderSide: BorderSide.none,
  color: backColor,
  onPressed: () {
    if (validatorParam1.text.length != 0 &&
        validatorParam2.text.length != 0 &&
        validatorParam3.text.length != 0 &&
        validatorParam4.text.length != 0 &&
        validatorParam5.text.length != 0) {
      theInputParamModel.checkParam(true);
      currentResult.param1 = int.parse(validatorParam1.text);
      currentResult.param2 = int.parse(validatorParam2.text);
      currentResult.param3 = int.parse(validatorParam3.text);
      currentResult.param4 = int.parse(validatorParam4.text);
      currentResult.param5 = int.parse(validatorParam5.text);
      navService.pushNamed(NavConst.resultRoute);
    } else {
      theInputParamModel.checkParam(false);
    }
  },
  child: Container(
    width: 200,
    height: 50,
    decoration: outlineButtonBoxDecoration,
    alignment: Alignment.center,
    child: Text(
      'Рассчитать',
      style: inputStyle,
    ),
  ),
);
