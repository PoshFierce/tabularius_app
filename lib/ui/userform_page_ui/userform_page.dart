import 'package:flutter/material.dart';
import '../special_entities/constants.dart';
import './userform_entities.dart';

class UserFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: screenPadding1,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: backColor),
        child: Column(
          children: <Widget>[
            inputContainer1,
            const SizedBox(
              height: 30,
            ),
            inputContainer2,
            const SizedBox(
              height: 30,
            ),
            inputContainer3,
            const SizedBox(
              height: 30,
            ),
            inputContainer4,
            const SizedBox(
              height: 30,
            ),
            inputContainer5,
            const SizedBox(
              height: 30,
            ),
            nextButton1
          ],
        ),
      ),
    );
  }
}
