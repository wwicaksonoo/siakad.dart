class MataKuliah {
  // Properties
  String kode;
  String nama;
  int sks;
  bool _tersedia; // Status ketersediaan mata kuliah

  // Constructor
  MataKuliah(this.kode, this.nama, this.sks) : _tersedia = true;

  // Getter
  bool get tersedia => _tersedia;

  // Methods
  void ambil() {
    if (_tersedia) {
      _tersedia = false;
      print('Mata kuliah $nama berhasil diambil');
    } else {
      print('Maaf, mata kuliah $nama tidak tersedia untuk diambil');
    }
  }

  void batal() {
    if (!_tersedia) {
      _tersedia = true;
      print('Mata kuliah $nama berhasil dibatalkan');
    } else {
      print('Mata kuliah $nama sudah tersedia untuk diambil');
    }
  }

  void tampilkanInfo() {
    print('\nInformasi Mata Kuliah:');
    print('Kode: $kode');
    print('Nama: $nama');
    print('SKS: $sks');
    print('Status: ${_tersedia ? "Tersedia untuk diambil" : "Sedang diambil"}');
  }
}
