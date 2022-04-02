import 'extensions.dart';

class CheckUtils {
  int pointer(int len) {
    int result = 0;
    for (var i = 0;;) {
      final dec = len - i;
      if (dec <= 0) {
        break;
      } else {
        result = dec;
      }
      i += 3;
    }
    return result;
  }

  int checkZero(
      {required String number, required int len, required int currIndex}) {
    //1.000.000, 7, 3
    //100.000, 6, 2
    //11.000, 5,
    int result = 0;
    try {
      for (var i = currIndex; i > currIndex - 3; i--) {
        if (number[i].isNol) {
          result++;
        }
      }
    } catch (e) {
      result = 0;
    }
    return result;
  }
}
