import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backColor = const Color(0xFF444C5C);
Color frontColor = const Color(0xFFDDA288);
Color errorColor = const Color(0xFFCE5A57);

TextStyle inputStyle = GoogleFonts.comfortaa(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  color: frontColor,
);

TextStyle hintStyle = GoogleFonts.comfortaa(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  letterSpacing: 1,
  color: frontColor,
);

TextStyle helperStyle = GoogleFonts.comfortaa(
  fontSize: 10,
  letterSpacing: 1,
  color: frontColor,
);

TextStyle errorInputStyle = GoogleFonts.comfortaa(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  color: errorColor,
);

TextStyle errorHintStyle = GoogleFonts.comfortaa(
  fontSize: 16,
  letterSpacing: 1,
  color: errorColor,
);

TextStyle errorHelperStyle = GoogleFonts.comfortaa(
  fontSize: 10,
  letterSpacing: 1,
  color: errorColor,
);

InputDecoration inputDecoration = InputDecoration(
  border: inputTextFieldBorder,
  enabledBorder: inputTextFieldBorder,
  focusedBorder: inputTextFieldBorder,
  hintText: 'Введите своё имя',
  hintStyle: hintStyle,
  helperText: 'С кем имеем честь работать?',
  helperStyle: helperStyle,
  icon: Icon(Icons.person, color: frontColor),
);

InputDecoration errorInputDecoration = InputDecoration(
  border: errorInputTextFieldBorder,
  enabledBorder: errorInputTextFieldBorder,
  focusedBorder: errorInputTextFieldBorder,
  hintText: 'Некорректный формат',
  hintStyle: errorHintStyle,
  helperText: 'Имя не может быть пустым',
  helperStyle: errorHelperStyle,
  icon: Icon(Icons.person, color: errorColor),
);

OutlineInputBorder inputTextFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5.0),
  borderSide: BorderSide(
    color: frontColor,
    style: BorderStyle.solid,
  ),
);

OutlineInputBorder errorInputTextFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5.0),
  borderSide: BorderSide(
    color: errorColor,
    style: BorderStyle.solid,
  ),
);

BoxDecoration outlineButtonBoxDecoration = BoxDecoration(
  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
  border: Border.all(
    color: frontColor,
    width: 2.0,
    style: BorderStyle.solid,
  ),
);

EdgeInsetsGeometry screenPadding1 =
    const EdgeInsets.symmetric(vertical: 100, horizontal: 50);

EdgeInsetsGeometry screenPadding2 =
    const EdgeInsets.symmetric(vertical: 80, horizontal: 30);

InputDecoration inputDecorationParam1 = InputDecoration(
  border: inputTextFieldBorder,
  enabledBorder: inputTextFieldBorder,
  focusedBorder: inputTextFieldBorder,
  hintText: 'Введите число или 0',
  helperText: 'Введите примерный месячный бюджет',
  hintStyle: hintStyle,
  helperStyle: helperStyle,
  icon: Icon(Icons.account_balance_wallet, color: frontColor),
);

InputDecoration errorInputDecorationParam1 = InputDecoration(
  border: errorInputTextFieldBorder,
  enabledBorder: errorInputTextFieldBorder,
  focusedBorder: errorInputTextFieldBorder,
  hintText: 'Поле не может быть пустым',
  hintStyle: errorHintStyle,
  helperText: 'Введите примерный месячный бюджет',
  helperStyle: errorHelperStyle,
  icon: Icon(Icons.account_balance_wallet, color: errorColor),
);

InputDecoration inputDecorationParam2 = InputDecoration(
  border: inputTextFieldBorder,
  enabledBorder: inputTextFieldBorder,
  focusedBorder: inputTextFieldBorder,
  hintText: 'Введите число или 0',
  helperText: 'Сколько примерно тратите на лекарства',
  hintStyle: hintStyle,
  helperStyle: helperStyle,
  icon: Icon(Icons.local_hospital, color: frontColor),
);

InputDecoration errorInputDecorationParam2 = InputDecoration(
  border: errorInputTextFieldBorder,
  enabledBorder: errorInputTextFieldBorder,
  focusedBorder: errorInputTextFieldBorder,
  hintText: 'Поле не может быть пустым',
  hintStyle: errorHintStyle,
  helperText: 'Сколько примерно тратите на лекарства',
  helperStyle: errorHelperStyle,
  icon: Icon(Icons.local_hospital, color: errorColor),
);

InputDecoration inputDecorationParam3 = InputDecoration(
  border: inputTextFieldBorder,
  enabledBorder: inputTextFieldBorder,
  focusedBorder: inputTextFieldBorder,
  hintText: 'Введите число или 0',
  helperText: 'Сколько примерно тратите на квартиру',
  hintStyle: hintStyle,
  helperStyle: helperStyle,
  icon: Icon(Icons.home, color: frontColor),
);

InputDecoration errorInputDecorationParam3 = InputDecoration(
  border: errorInputTextFieldBorder,
  enabledBorder: errorInputTextFieldBorder,
  focusedBorder: errorInputTextFieldBorder,
  hintText: 'Поле не может быть пустым',
  hintStyle: errorHintStyle,
  helperText: 'Сколько примерно тратите на квартиру',
  helperStyle: errorHelperStyle,
  icon: Icon(Icons.home, color: errorColor),
);

InputDecoration inputDecorationParam4 = InputDecoration(
  border: inputTextFieldBorder,
  enabledBorder: inputTextFieldBorder,
  focusedBorder: inputTextFieldBorder,
  hintText: 'Введите число или 0',
  helperText: 'Сколько примерно в день\nтратите на транспорт',
  hintStyle: hintStyle,
  helperStyle: helperStyle,
  icon: Icon(Icons.train, color: frontColor),
);

InputDecoration errorInputDecorationParam4 = InputDecoration(
  border: errorInputTextFieldBorder,
  enabledBorder: errorInputTextFieldBorder,
  focusedBorder: errorInputTextFieldBorder,
  hintText: 'Поле не может быть пустым',
  hintStyle: errorHintStyle,
  helperText: 'Сколько примерно в день\nтратите на транспорт',
  helperStyle: errorHelperStyle,
  icon: Icon(Icons.train, color: errorColor),
);

InputDecoration inputDecorationParam5 = InputDecoration(
  border: inputTextFieldBorder,
  enabledBorder: inputTextFieldBorder,
  focusedBorder: inputTextFieldBorder,
  hintText: 'Введите число или 0',
  helperText: 'Сколько примерно в день тратите на еду',
  hintStyle: hintStyle,
  helperStyle: helperStyle,
  icon: Icon(Icons.person, color: frontColor),
);

InputDecoration errorInputDecorationParam5 = InputDecoration(
  border: errorInputTextFieldBorder,
  enabledBorder: errorInputTextFieldBorder,
  focusedBorder: errorInputTextFieldBorder,
  hintText: 'Поле не может быть пустым',
  hintStyle: errorHintStyle,
  helperText: 'Сколько примерно в день тратите на еду',
  helperStyle: errorHelperStyle,
  icon: Icon(Icons.restaurant, color: errorColor),
);
