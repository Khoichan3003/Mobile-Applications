class Docgia {
  String _maDocGia;
  String _hoTen;
  List<String> _danhsachSachMuon;

  // Constructor
  Docgia(this._maDocGia, this._hoTen, this._danhsachSachMuon);

  String get maDocGia => _maDocGia;
  String get hoTen => _hoTen;
  List<String> get danhsachSachMuon => _danhsachSachMuon;

  set maDocGia(String maDocGia) {
    if (maDocGia.isNotEmpty) {
      _maDocGia = maDocGia;
    }
  }

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set danhsachSachMuon(List<String> danhsachSachMuon) {
    if (danhsachSachMuon != null) {
      _danhsachSachMuon = danhsachSachMuon;
    }
  }

  // Kiểm tra sách đã có người mượn chưa
  bool kiemTraSachDaMuon(String tenSach) {
    return _danhsachSachMuon.contains(tenSach);
  }

  // Thêm sách vào danh sách mượn
  void themSach(String tenSach) {
    if (!_danhsachSachMuon.contains(tenSach)) {
      _danhsachSachMuon.add(tenSach);
      print("Đã thêm sách '$tenSach' vào danh sách mượn.");
    } else {
      print("Sách '$tenSach' đã có trong danh sách mượn.");
    }
  }

  // Cập nhật trạng thái sách
  void capNhatTrangThaiSach(String tenSach, String trangThai) {
    if (_danhsachSachMuon.contains(tenSach)) {
      print("Trạng thái sách '$tenSach' đã được cập nhật thành '$trangThai'.");
    } else {
      print("Không tìm thấy sách '$tenSach' trong danh sách mượn.");
    }
  }

  // Trả sách: Xóa sách khỏi danh sách mượn và cập nhật trạng thái
  void traSach(String tenSach) {
    if (_danhsachSachMuon.contains(tenSach)) {
      _danhsachSachMuon.remove(tenSach);
      print("Sách '$tenSach' đã được trả và xóa khỏi danh sách mượn.");
      capNhatTrangThaiSach(tenSach, "Đã trả");
    } else {
      print("Sách '$tenSach' không có trong danh sách mượn, không thể trả.");
    }
  }
}
