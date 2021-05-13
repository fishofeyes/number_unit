import 'package:flutter_test/flutter_test.dart';

import 'package:numberunit/numberunit.dart';


void main() {
  test('adds one to input values', () {
    expect(NumberUnit.thousandFormat(1000), "1,000.00");
    expect(NumberUnit.thousandFormat(-1000), "-1,000.00");

  });
}
