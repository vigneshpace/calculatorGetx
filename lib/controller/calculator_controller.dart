import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var first = 0.obs;
  var second = 0.obs;
  var res = "".obs;
  var text = "".obs;
  var opp = "".obs;
  var history = "".obs;
  var wholeHistory = "".obs;

  void btnClicked(String btnText) {
    if (btnText == "C") {
      res.value = "";
      text.value = "";
      first.value = 0;
      second.value = 0;
      history.value = "";
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "X" ||
        btnText == "/") {
      first.value = int.parse(text.value);
      res.value = "";
      opp.value = btnText;
    } else if (btnText == "=") {
      second.value = int.parse(text.value);
      if (opp.value == "+") {
        res.value = (first.value + second.value).toString();
        history.value = first.toString() + opp.toString() + second.toString();
        wholeHistory.value += history + "=" + res.value + "\n";
      }
      if (opp.value == "-") {
        res.value = (first.value - second.value).toString();
        history.value = first.toString() + opp.toString() + second.toString();
        wholeHistory.value += history + "=" + res.value + "\n";
      }
      if (opp.value == "X") {
        res.value = (first.value * second.value).toString();
        history.value = first.toString() + opp.toString() + second.toString();
        wholeHistory.value += history + "=" + res.value + "\n";
      }
      if (opp.value == "/") {
        res.value = (first.value / second.value).toString();
        history.value = first.toString() + opp.toString() + second.toString();
        wholeHistory.value += history.value + "=" + res.value + "\n";
      }
    } else {
      res.value = int.parse(text + btnText).toString();
    }
  }
}
