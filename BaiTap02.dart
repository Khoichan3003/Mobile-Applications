//BaiTap02.dart
// Giai pt bac 2: ax^2 + bx +c =0;
//Neu khong ep kieu duoc thi cho = 0
import 'dart:io';
import 'dart:math';

void main() {
  // Hàm hỗ trợ nhập số hợp lệ
  double nhapHeSo(String thongBao) {
    double? heSo;
    do {
      stdout.write(thongBao);
      String? input = stdin.readLineSync();
      heSo = double.tryParse(input ?? '');
      if (heSo == null) {
        print('Lỗi: Vui lòng nhập một số hợp lệ.');
      }
    } while (heSo == null);
    return heSo;
  }

  // Nhập hệ số a và kiểm tra a ≠ 0
  double a;
  do {
    a = nhapHeSo('Nhập hệ số a (a ≠ 0): ');
    if (a == 0) {
      print('Lỗi: Hệ số a phải khác 0.');
    }
  } while (a == 0);

  // Nhập hệ số b và c
  double b = nhapHeSo('Nhập hệ số b: ');
  double c = nhapHeSo('Nhập hệ số c: ');

  // Tính delta
  double delta = b * b - 4 * a * c;

  // Kiểm tra giá trị delta và tìm nghiệm
  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có 2 nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép: x = $x');
  } else {
    print('Phương trình vô nghiệm (delta < 0).');
  }
}

