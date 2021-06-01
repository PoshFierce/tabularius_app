import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../special_entities/nav_service.dart';
import '../special_entities/constants.dart';
import '../../core/domain/models/intro_page/text_field_model.dart';

Container inputContainer = Container(
  child: StreamBuilder<bool>(
    stream: theInputNameModel.inputNameChannel,
    builder: (context, snapshot) {
      switch (snapshot.data) {
        case false:
          return errorInputNameTextField;

        default:
          return inputNameTextField;
      }
    },
  ),
);

TextField inputNameTextField = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-Я]+|\s'))
    ],
    controller: validatorName,
    keyboardType: TextInputType.name,
    maxLength: 20,
    style: inputStyle,
    decoration: inputDecoration,
    cursorColor: frontColor);

TextField errorInputNameTextField = TextField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-Я]+|\s'))
    ],
    controller: validatorName,
    keyboardType: TextInputType.name,
    maxLength: 20,
    style: errorInputStyle,
    decoration: errorInputDecoration,
    cursorColor: errorColor);

TextEditingController validatorName = TextEditingController();

OutlineButton nextButton = OutlineButton(
  highlightColor: backColor,
  borderSide: BorderSide.none,
  color: backColor,
  onPressed: () {
    if (validatorName.text.length != 0) {
      theInputNameModel.checkName(true);
      navService.pushNamed(NavConst.userformRoute);
    } else {
      theInputNameModel.checkName(false);
    }
  },
  child: Container(
    width: 200,
    height: 50,
    decoration: outlineButtonBoxDecoration,
    alignment: Alignment.center,
    child: Text(
      'Продолжить',
      style: inputStyle,
    ),
  ),
);

Container helpContainer = Container(
  alignment: Alignment.center,
  child: Text(
    '*Введённое имя вы всегда сможете\nпоменять в настройках после\nзаполнения анкеты параметров\nрасчёта ваших финансов',
    style: hintStyle,
  ),
);
