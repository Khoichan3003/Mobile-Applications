class Sach {
  String _Masach;
  String _TenSach;
  String _Tacgia;
  bool _Trangthaimuon;
  //Constructors
  Sach(this._Masach, this._TenSach, this._Tacgia, this._Trangthaimuon);
  // Getters and setters
  String get Masach => _Masach;
  String get TenSach => _TenSach;
  String get Tacgia => _Tacgia;
  bool get Trangthaimuon => _Trangthaimuon;

  set Masach(String Masach) {
    if (Masach.isNotEmpty) {
      _Masach = Masach;
    }
  }

  set TenSach(String TenSach) {
    if (TenSach.isNotEmpty) {
      _TenSach = TenSach;
    }
  }

  set Tacgia(String tacgia) {
    if (tacgia.isNotEmpty) {
      _Tacgia = tacgia;
    }
  }
  set Trangthaimuon(bool trangthaimuon) {
    _Trangthaimuon = trangthaimuon;
  }
  void hienthithongtin(){
    print("Mã sách: $_Masach");
    print("Tên sách: $_TenSach");
    print("Tác giả: $_Tacgia");
    print("Trạng thái mượn: ${_Trangthaimuon? 'Đang mượn' : 'Chưa mượn'}");
  }
}


