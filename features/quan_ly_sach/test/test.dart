import '../models/Sach.dart';
import '../models/DocGia.dart';
import '../models/ThuVien.dart';

void main() {
  // Tạo đối tượng thư viện
  ThuVien thuVien = ThuVien();

  // Thêm sách vào thư viện
  thuVien.themSach("Dart Programming");
  thuVien.themSach("Flutter Basics");
  thuVien.themSach("Dart Programming"); // Trùng lặp

  // Thêm độc giả vào thư viện
  Docgia docgia1 = Docgia("DG001", "Nguyen Van A", []);
  Docgia docgia2 = Docgia("DG002", "Tran Van B", ["Flutter Basics"]);

  thuVien.themDocGia(docgia1);
  thuVien.themDocGia(docgia2);
  thuVien.themDocGia(docgia1); // Trùng lặp

  // Hiển thị danh sách sách
  thuVien.hienThiDanhSachSach();

  // Hiển thị danh sách độc giả
  thuVien.hienThiDanhSachDocGia();

  // Kiểm tra quy trình mượn/trả sách
  print("\nQuy trình mượn/trả sách:");
  docgia1.themSach("Dart Programming"); // Mượn sách
  docgia1.traSach("Dart Programming"); // Trả sách
  docgia1.traSach("Nonexistent Book"); // Trả sách không có
}

