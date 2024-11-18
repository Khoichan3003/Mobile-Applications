import '../models/DocGia.dart';

class ThuVien {
  // Thuộc tính
  List<String> _danhSachSach = [];
  List<Docgia> _danhSachDocGia = [];

  // Getter
  List<String> get danhSachSach => _danhSachSach;
  List<Docgia> get danhSachDocGia => _danhSachDocGia;

  // Thêm sách
  void themSach(String tenSach) {
    if (!_danhSachSach.contains(tenSach)) {
      _danhSachSach.add(tenSach);
      print("Đã thêm sách '$tenSach' vào thư viện.");
    } else {
      print("Sách '$tenSach' đã tồn tại trong thư viện.");
    }
  }

  // Thêm độc giả
  void themDocGia(Docgia docGia) {
    if (!_danhSachDocGia.any((dg) => dg.maDocGia == docGia.maDocGia)) {
      _danhSachDocGia.add(docGia);
      print("Đã thêm độc giả '${docGia.hoTen}' vào thư viện.");
    } else {
      print("Độc giả '${docGia.hoTen}' đã tồn tại trong thư viện.");
    }
  }

  // Hiển thị danh sách sách
  void hienThiDanhSachSach() {
    print("Danh sách sách trong thư viện:");
    if (_danhSachSach.isEmpty) {
      print("Không có sách nào.");
    } else {
      _danhSachSach.forEach((sach) => print("- $sach"));
    }
  }

  // Hiển thị danh sách độc giả
  void hienThiDanhSachDocGia() {
    print("Danh sách độc giả trong thư viện:");
    if (_danhSachDocGia.isEmpty) {
      print("Không có độc giả nào.");
    } else {
      _danhSachDocGia
          .forEach((docGia) => print("- ${docGia.hoTen} (${docGia.maDocGia})"));
    }
  }
}
