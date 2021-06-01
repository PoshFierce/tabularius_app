class Result {
  int param1;
  int param2;
  int param3;
  int param4;
  int param5;

  List<int> getResult() {
    int countTransport = param4 * 30;
    int countFood = param5 * 30;
    int bonus = param1 - param2 - param3 - countTransport - countFood;
    if (bonus < 0) {
      return [0, 0, 0, 0, 0, 0, 0];
    } else {
      return [
        bonus,
        countTransport,
        countFood,
        param4,
        param5,
        param2,
        param3,
        param1
      ];
    }
  }

  String getAdvice() {
    int countTransport = param4 * 30;
    int countFood = param5 * 30;
    int bonus = param1 - param2 - param3 - countTransport - countFood;
    double param11 = param1.toDouble() / 100 * 30;
    if ((bonus - param11).abs() > param11 / 2) {
      return 'Ваш неприкосновенный баланс недостаточно полноценен.'
              ' Он должен составлять 30% от вашего месячного бюджета.'
              ' До хорошего баланса не хватает сократить расходы на ' +
          (bonus - param11).abs().toString() +
          ' или увеличть даход на эту же сумму.';
    } else {
      return 'Ваш неприкосновенный баланс достаточно полноценен!';
    }
  }
}

Result currentResult = Result();
