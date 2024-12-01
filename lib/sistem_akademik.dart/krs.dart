
import 'mahasiswa.dart';
import 'matakuliah.dart';

class KRS {
  // Properties
  String namaKRS;
  List<Mahasiswa> daftarMahasiswa;
  List<MataKuliah> daftarMataKuliah;

  // Constructor
  KRS(this.namaKRS)
      : daftarMahasiswa = [],
        daftarMataKuliah = [];

  // Methods
  void tambahMahasiswa(Mahasiswa mahasiswa) {
    daftarMahasiswa.add(mahasiswa);
    print('Mahasiswa ${mahasiswa.nama} (NIM: ${mahasiswa.nim}) ditambahkan ke KRS');
  }

  void tambahMataKuliah(MataKuliah mataKuliah) {
    daftarMataKuliah.add(mataKuliah);
    print('Mata kuliah ${mataKuliah.nama} (Kode: ${mataKuliah.kode}) ditambahkan ke KRS');
  }

  Mahasiswa? cariMahasiswa(String nim) {
    try {
      return daftarMahasiswa.firstWhere(
          (mhs) => mhs.nim.toLowerCase() == nim.toLowerCase());
    } catch (e) {
      print('Mahasiswa dengan NIM "$nim" tidak ditemukan');
      return null;
    }
  }

  MataKuliah? cariMataKuliah(String kode) {
    try {
      return daftarMataKuliah.firstWhere(
          (mk) => mk.kode.toLowerCase() == kode.toLowerCase());
    } catch (e) {
      print('Mata kuliah dengan kode "$kode" tidak ditemukan');
      return null;
    }
  }

  void tampilkanSemuaMahasiswa() {
    print('\nDaftar Mahasiswa di $namaKRS:');
    if (daftarMahasiswa.isEmpty) {
      print('Belum ada mahasiswa');
      return;
    }
    for (var mahasiswa in daftarMahasiswa) {
      print('- ${mahasiswa.nama} (NIM: ${mahasiswa.nim}, Semester: ${mahasiswa.semester})');
    }
  }

  void tampilkanSemuaMataKuliah() {
    print('\nDaftar Mata Kuliah di $namaKRS:');
    if (daftarMataKuliah.isEmpty) {
      print('Belum ada mata kuliah');
      return;
    }
    for (var mk in daftarMataKuliah) {
      print('- ${mk.nama} (Kode: ${mk.kode}, ${mk.sks} SKS)');
    }
  }
}
