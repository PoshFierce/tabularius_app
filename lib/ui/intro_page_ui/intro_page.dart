import 'package:flutter/material.dart';
import '../special_entities/constants.dart';
import './intro_page_entities.dart';

class IntroPage extends StatelessWidget {
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
            const SizedBox(
              height: 250,
              width: 250,
              child: Image(
                  image: AssetImage('assets/img/Logo.png'), fit: BoxFit.fill),
            ),
            const SizedBox(
              height: 40,
            ),
            inputContainer,
            const SizedBox(
              height: 40,
            ),
            nextButton,
            const SizedBox(
              height: 40,
            ),
            helpContainer,
          ],
        ),
      ),
    );
  }
}
