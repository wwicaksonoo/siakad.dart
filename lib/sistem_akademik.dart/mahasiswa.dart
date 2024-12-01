import 'matakuliah.dart';

class Mahasiswa {
  // Properties
  String nim;
  String nama;
  int semester;
  List<MataKuliah> mataKuliahDiambil;

  // Constructor
  Mahasiswa(this.nim, this.nama, this.semester) : mataKuliahDiambil = [];

  // Methods
  void tambahMataKuliah(MataKuliah mataKuliah) {
    if (!mataKuliahDiambil.contains(mataKuliah)) {
      mataKuliahDiambil.add(mataKuliah);
      print('$nama berhasil menambahkan mata kuliah ${mataKuliah.nama}');
    } else {
      print('Mata kuliah ${mataKuliah.nama} sudah diambil');
    }
  }

  void tampilkanMataKuliah() {
    print('\nDaftar Mata Kuliah yang Diambil $nama:');
    if (mataKuliahDiambil.isEmpty) {
      print('Belum ada mata kuliah yang diambil');
    } else {
      for (var mk in mataKuliahDiambil) {
        print('- ${mk.nama} (${mk.kode}, ${mk.sks} SKS)');
      }
    }
  }
}
