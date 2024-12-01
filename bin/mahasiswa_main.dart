import '../mahasiswa.dart';
import '../matakuliah.dart';
import '../nilai.dart';

void main() {
  // 1. Tambahkan mahasiswa
  Mahasiswa mahasiswa = Mahasiswa('123456', 'Max Mazanov', 3);

  // 2. Tambahkan mata kuliah
  MataKuliah matkul1 = MataKuliah('IF101', 'Pemrograman Dasar', 3);
  MataKuliah matkul2 = MataKuliah('IF202', 'Struktur Data', 4);
  MataKuliah matkul3 = MataKuliah('IF303', 'Basis Data', 2);

  // Daftar mata kuliah
  List<MataKuliah> mataKuliahList = [matkul1, matkul2, matkul3];

  // 3. Tambahkan semua mata kuliah ke daftar mahasiswa
  for (var matkul in mataKuliahList) {
    mahasiswa.tambahMataKuliah(matkul);
  }

  // 4. Berikan nilai pada mata kuliah yang diambil
  List<Nilai> daftarNilai = [
    Nilai(matkul1, 'A'),
    Nilai(matkul2, 'B'),
    Nilai(matkul3, 'A'),
  ];

  // 5. Tampilkan informasi mahasiswa
  print('\nInformasi Mahasiswa:');
  print('NIM: ${mahasiswa.nim}');
  print('Nama: ${mahasiswa.nama}');
  print('Semester: ${mahasiswa.semester}');

  // 6. Tampilkan daftar mata kuliah yang diambil
  mahasiswa.tampilkanMataKuliah();

  // 7. Tampilkan transkrip nilai
  Nilai.tampilkanTranskrip(daftarNilai);
}

