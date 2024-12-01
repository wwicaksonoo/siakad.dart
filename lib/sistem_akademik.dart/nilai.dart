
import 'matakuliah.dart';

class Nilai {
  // Properties
  MataKuliah mataKuliah;
  String nilaiHuruf;
  double bobot;

  // Constructor
  Nilai(this.mataKuliah, this.nilaiHuruf) : bobot = _konversiBobot(nilaiHuruf);

  // Konversi nilai huruf ke bobot
  static double _konversiBobot(String nilaiHuruf) {
    switch (nilaiHuruf.toUpperCase()) {
      case 'A':
        return 4.0;
      case 'B':
        return 3.0;
      case 'C':
        return 2.0;
      case 'D':
        return 1.0;
      case 'E':
        return 0.0;
      default:
        throw ArgumentError('Nilai huruf tidak valid: $nilaiHuruf');
    }
  }

  // Menampilkan informasi nilai
  void tampilkanInfo() {
    print(
        '- ${mataKuliah.nama} (${mataKuliah.kode}, ${mataKuliah.sks} SKS): Nilai $nilaiHuruf (Bobot: $bobot)');
  }

  // Menampilkan transkrip dari daftar nilai
  static void tampilkanTranskrip(List<Nilai> daftarNilai) {
    if (daftarNilai.isEmpty) {
      print('\nTranskrip Nilai:');
      print('Belum ada nilai yang tercatat.');
      return;
    }

    print('\nTranskrip Nilai:');
    print('------------------------------------------');
    print('| Kode | Nama Mata Kuliah     | SKS | Nilai |');
    print('------------------------------------------');

    int totalSKS = 0;
    double totalBobot = 0;

    for (var nilai in daftarNilai) {
      print(
          '| ${nilai.mataKuliah.kode.padRight(5)} | ${nilai.mataKuliah.nama.padRight(20)} | ${nilai.mataKuliah.sks.toString().padRight(3)} | ${nilai.nilaiHuruf.padRight(5)} |');
      totalSKS += nilai.mataKuliah.sks;
      totalBobot += nilai.bobot * nilai.mataKuliah.sks;
    }

    double ipk = totalSKS > 0 ? totalBobot / totalSKS : 0.0;

    print('------------------------------------------');
    print('Total SKS: $totalSKS');
    print('IPK: ${ipk.toStringAsFixed(2)}');
  }
}
