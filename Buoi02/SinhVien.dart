//Lop Sinh vien
class Sinhvien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;Mobile-Applications/Buoi02/SinhVien.dart

  // Constructors
  Sinhvien(this._hoTen, this._tuoi, this._maSV, this._diemTB);
  // Getters and setters
  String get hoTen => _hoTen;
  set hoTen(String hoTen) {
    if (hoTen.isEmpty) throw new ArgumentError("Ho ten khong duoc de trong");
    _hoTen = hoTen;
  }

  int get tuoi => _tuoi;
  set tuoi(int tuoi) {
    if (tuoi <= 0) throw new ArgumentError("Tuoi phai lon hon 0");
    _tuoi = tuoi;
  }

  String get maSV => _maSV;
  set maSV(String maSV) {
    if (maSV.isEmpty)
      throw new ArgumentError("Ma sinh vien khong duoc de trong");
    _maSV = maSV;
  }

  double get diemTB => _diemTB;
  set diemTB(double diemTB) {
    if (diemTB < 0 || diemTB > 10)
      throw new ArgumentError("Diem trung binh phai lon hon 0 va nho hon 10");
    _diemTB = diemTB;
  }

  void hienThiThongTin() {
    print('Họ Tên: $_hoTen');
    print('Tuoi: $_maSV');
    print('Ma so sinh vien: $_tuoi');
    print('Diem tb: $_diemTB');
  }

  String xepLoai() {
    if (_diemTB >= 8.0) return 'Gioi';
    if (_diemTB >= 6.5) return 'Kha';
    if (_diemTB >= 5.0) return 'Trung Binh';
    return 'Yeu';
  }
}

//Lop Lophoc
class LopHoc {
  String _tenLop;
  List<Sinhvien> _danhsachSV = [];
  LopHoc(this._tenLop);
  // Getters and setters
  String get tenlop => _tenLop;
  List<Sinhvien> get danhsachSV => _danhsachSV;
  set tenlop(String tenLop) {
    if (tenlop.isNotEmpty) {
      _tenLop = tenLop;
    }
  }

  //Them sinh vien
  void themSinhVien(Sinhvien sv) => _danhsachSV.add(sv);
  void hienThiDanhsach() {
    print('\n----------------------------------');
    print('\n----------------------------------');
    print('Danh sach sinh vien lop $_tenLop');
    for (var sv in _danhsachSV) {
      print('\n----------------------------------');
      sv.hienThiThongTin();
      print('\nXep loai: ${sv.xepLoai()}');
    }
  }
}

//Test
void main() {
  var sv = Sinhvien('Nguyen Van A', 20, 'SV002', 8.5);
  print('Tesst getter: ${sv._hoTen}');
  sv.hoTen = 'Nguyen Van B';
  print('sau khi test xong: ${sv._hoTen}');
  print('xep loai: ${sv.xepLoai()}');

  var lop = LopHoc('21DTHD5');
  lop.themSinhVien(Sinhvien('Nguyen Van A', 20, 'SV002', 8.5));
  lop.themSinhVien(Sinhvien('Nguyen Van B', 20, 'SV003', 6.0));
  lop.themSinhVien(Sinhvien('Nguyen Van C', 20, 'SV004', 9.5));
  lop.themSinhVien(Sinhvien('Nguyen Van D', 20, 'SV005', 2.5));
  lop.hienThiDanhsach();
}
