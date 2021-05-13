library numberunit;

export 'package:numberunit/numberunit.dart';

/// 千分位单位工具.
class NumberUnit {
  /// fixed 保留几位小数
  /// splichar 分割符号
  static String thousandFormat(num val, {int fixed = 2, String splichar = ","}) {
    if(val == null) return 0.toStringAsFixed(2);
    if(fixed == null) fixed = 2;
    String temp = val.abs().toStringAsFixed(fixed);
    List<String> arr = temp.split("");
    final index = arr.indexOf(".") - 3;
    for(int i = index; i > 0; i -= 3) {
      arr.insert(i, splichar);
    }
    return val < 0 ? "-${arr.join("")}" : arr.join("");
  }
}
