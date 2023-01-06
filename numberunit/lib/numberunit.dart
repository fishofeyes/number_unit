library numberunit;

export 'package:numberunit/numberunit.dart';

/// 千分位单位工具.
class NumberUnit {
  /// fixed 保留几位小数
  /// splichar 分割符号
  static String thousandFormat(num val, {int fixed = 2, String splichar = ","}) {
    String temp = "${fixed == 0 ? val.abs() : val.abs().toStringAsFixed(fixed)}";
    List<String> arr = temp.split("");
    int index = arr.indexOf(".");
    if(index == -1) {
      index = arr.length;
    }
    index = index - 3;
    for(int i = index; i > 0; i -= 3) {
      arr.insert(i, splichar);
    }
    return val < 0 ? "-${arr.join("")}" : arr.join("");
  }
}
