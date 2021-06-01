import 'package:flutter/material.dart';
//import '../special_entities/nav_service.dart';
import '../special_entities/constants.dart';
import '../../core/domain/processes/get_result.dart';

var params = currentResult.getResult();

Container titleContainer1 = Container(
  alignment: Alignment.center,
  child: Text(
    'Ваш месячный расчёт',
    style: hintStyle,
  ),
);

Container titleContainer2 = Container(
  alignment: Alignment.center,
  child: Text(
    'Ваш суточный расчёт',
    style: hintStyle,
  ),
);

Container contentContainer1 = Container(
  alignment: Alignment.center,
  child: Text(
    'Выделенный баланс на еду: ' +
        params[2].toString() +
        '\n' +
        'Выделенный баланс\nна транспорт: ' +
        params[1].toString() +
        '\n' +
        'Выделенный баланс на лекарства: ' +
        params[5].toString() +
        '\n' +
        'Выделенный баланс на квартиру: ' +
        params[6].toString() +
        '\n' +
        'Неприкосновенный баланс: ' +
        params[0].toString(),
    style: hintStyle,
  ),
);

Container contentContainer2 = Container(
  alignment: Alignment.center,
  child: Text(
    'Выделенный баланс на еду: ' +
        (params[2] / 30).toString() +
        '\n' +
        'Выделенный баланс\nна транспорт: ' +
        (params[1] / 30).toString() +
        '\n',
    style: hintStyle,
  ),
);

Container adviceContainer = Container(
  alignment: Alignment.center,
  child: Text(
    currentResult.getAdvice(),
    style: hintStyle,
  ),
);

Container promtContainer = Container(
  alignment: Alignment.center,
  child: Text(
    'Если по всем расчётам стоит 0,\nто ваши расхды превышают доход,\nизмените параметры расчёта!',
    style: hintStyle,
  ),
);

CircularProgressIndicator indicator = CircularProgressIndicator(
  backgroundColor: errorColor,
  valueColor: AlwaysStoppedAnimation(frontColor),
  strokeWidth: 5,
  value: params[0] / params[7],
);
