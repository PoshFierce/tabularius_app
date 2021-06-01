import 'package:flutter/material.dart';
//import '../special_entities/nav_service.dart';
import '../special_entities/constants.dart';
import './result_page_entities.dart';

class ResultPage extends StatelessWidget {
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
            titleContainer1,
            const SizedBox(
              height: 15,
            ),
            contentContainer1,
            const SizedBox(
              height: 30,
            ),
            titleContainer2,
            const SizedBox(
              height: 15,
            ),
            contentContainer2,
            const SizedBox(
              height: 30,
            ),
            adviceContainer,
            const SizedBox(
              height: 20,
            ),
            promtContainer,
            const SizedBox(
              height: 20,
            ),
            indicator
          ],
        ),
      ),
    );
  }
}
