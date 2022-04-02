import 'package:flutter_test/flutter_test.dart';
import 'package:terbilang_id/src/check_utils.dart';

void main(){
  late CheckUtils check;
  
  setUp((){
    check = CheckUtils();
  });

  test("test pointer", (){
    expect(check.pointer(1), 1);
    expect(check.pointer(2), 2);
    expect(check.pointer(3), 3);
    expect(check.pointer(5), 2);
    expect(check.pointer(4), 1);
    expect(check.pointer(6), 3);
    expect(check.pointer(7), 1);
    expect(check.pointer(8), 2);
    expect(check.pointer(9), 3);
  });

  test("test check zero", (){
    expect(check.checkZero(number: "1000", len: 4, currIndex: 0), 0);
    expect(check.checkZero(number: "100000", len: 6, currIndex: 2), 2);
    expect(check.checkZero(number: "1000000", len: 7, currIndex: 3), 3);
    expect(check.checkZero(number: "1100000", len: 7, currIndex: 3), 2);
    expect(check.checkZero(number: "1000000", len: 7, currIndex: 6), 3);
    expect(check.checkZero(number: "1000000000", len: 10, currIndex: 3), 3);
    expect(check.checkZero(number: "1000000000", len: 10, currIndex: 6), 3);
    expect(check.checkZero(number: "1000000000", len: 10, currIndex: 9), 3);
  });
}