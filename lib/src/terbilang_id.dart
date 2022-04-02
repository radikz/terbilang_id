import 'package:terbilang_id/src/check_utils.dart';

import 'extensions.dart';

class Terbilang {
  String terbilang(double value) {
    final number = value.toStringAsFixed(0);
    final len = number.length;
    String result = "";
    for (var i = 0; i < len; i++) {
      final length = len - i;
      final delimiter = CheckUtils().pointer(length);

      if (delimiter == 3) {
        if (number[i].isNol) continue;
        result += _ratusan(number[i], currIndex: i, len: len, number: number);
      } else if (delimiter == 2) {
        if (number[i].isSatu && !number[i + 1].isNol) {
          result += belasan(number[i], currIndex: i, len: len, number: number);
        } else {
          if (number[i].isNol) continue;

          result += _puluhan(number[i], number[i + 1]);
        }
      } else if (delimiter == 1) {
        if (len > 1) {
          try {
            if (number[i - 1].isSatu) {
              // continue;
            } else {
              result += _satuan(number[i]);
            }
          } catch (e) {
            if (e is RangeError) {
              if (length >= 7 && number[i].isSatu) {
                result += _satuan(number[i], isJutaan: true);
              } else {
                // seribu
                result += _satuan(number[i], unique: true);
              }
            }
          }
        }
        if (len == 1) {
          result += _satuan(number[i]);
        }
      }

      if (length == 10) {
        final tripleZero =
            CheckUtils().checkZero(number: number, len: len, currIndex: i);
        if (tripleZero == 3) continue;
        result += _miliaran(number[i], currIndex: i, len: len, number: number);
      } else if (length == 7) {
        final tripleZero =
            CheckUtils().checkZero(number: number, len: len, currIndex: i);
        if (tripleZero == 3) continue;
        result += _jutaan(number[i], currIndex: i, len: len, number: number);
      } else if (length == 4) {
        final tripleZero =
            CheckUtils().checkZero(number: number, len: len, currIndex: i);
        if (tripleZero == 3) continue;

        result += _ribuan(number[i], currIndex: i, len: len, number: number);
      }
    }
    result = result.replaceAll("  ", " ");
    return result;
  }

  String _miliaran(String value1,
      {required String number, required int len, required int currIndex}) {
    String result = "";
    try {
      if (value1.isSatu) {
        if (number[currIndex - 1].isSatu) {
          result += " Miliar";
        } else {
          result += " Miliar";
        }
      } else {
        result += " miliar";
      }
    } catch (e) {
      result += "Miliar";
    }

    result += _addWhitespace(currIndex, len, number);
    return result;
  }

  String _jutaan(String value1,
      {required String number, required int len, required int currIndex}) {
    String result = "";
    // 100.000.000
    // 110.000.000
    try {
      if (value1.isSatu) {
        if (number[currIndex - 1].isSatu) {
          result += " Juta";
        } else {
          result += " Juta";
        }
      } else {
        result += " Juta";
      }
    } catch (e) {
      result += "juta";
    }

    result += _addWhitespace(currIndex, len, number);
    return result;
  }

  String _ribuan(String value1,
      {required String number, required int len, required int currIndex}) {
    String result = "";
    try {
      if (value1.isSatu) {
        if (number[currIndex - 1].isSatu) {
          result += " Ribu";
        } else {
          result += " Ribu";
        }
      } else {
        result += " Ribu";
      }
    } catch (e) {
      result += "ribu";
    }

    result += _addWhitespace(currIndex, len, number);
    return result;
  }

  String _ratusan(String value1,
      {required String number, required int len, required int currIndex}) {
    String result = "";
    if (value1.isSatu) {
      result += "Seratus";
    } else {
      result += "${_satuan(value1)} Ratus";
    }
    result += _addWhitespace(currIndex, len, number);
    return result;
  }

  String _puluhan(String value1, String value2) {
    if (value1.isSatu) {
      return "Sepuluh";
    } else {
      return "${_satuan(value1)} Puluh${value2.isNol ? "" : " "}";
    }
  }

  String belasan(String value1,
      {required String number, required int len, required int currIndex}) {
    String result = "";
    if (number[currIndex + 1].isSatu) {
      result += "Sebelas";
    } else {
      result += "${_satuan(number[currIndex + 1])} Belas";
    }

    // result += _addWhitespace(currIndex + 1, len, number);

    return result;
  }

  String _satuan(String value, {bool unique = false, bool isJutaan = false}) {
    if (value.isSatu) {
      if (isJutaan) {
        return "Satu ";
      }
      return unique ? "Se" : "Satu";
    } else if (value.isDua) {
      return "Dua";
    } else if (value.isTiga) {
      return "Tiga";
    } else if (value.isEmpat) {
      return "Empat";
    } else if (value.isLima) {
      return "Lima";
    } else if (value.isEnam) {
      return "Enam";
    } else if (value.isTujuh) {
      return "Tujuh";
    } else if (value.isDelapan) {
      return "Delapan";
    } else if (value.isSembilan) {
      return "Sembilan";
    } else {
      return "";
    }
  }

  String _addWhitespace(int currIndex, int len, String number) {
    var result = "";
    // 100.100.000.000
    for (var i = currIndex + 1; i < len; i++) {
      if (number[i].isNol) {
        continue;
      } else {
        result += " ";
        break;
      }
    }
    return result;
  }
}
