import 'package:rxdart/rxdart.dart';

class InputNameModel {
  final inputNameChannel = BehaviorSubject<bool>.seeded(true);

  void checkName(bool isCorrect) {
    inputNameChannel.add(isCorrect);
  }
}

final theInputNameModel = InputNameModel();

class InputParamModel {
  final inputParamChannel = BehaviorSubject<bool>.seeded(true);

  void checkParam(bool isCorrect) {
    inputParamChannel.add(isCorrect);
  }
}

final theInputParamModel = InputParamModel();
