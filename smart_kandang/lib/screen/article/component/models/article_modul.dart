import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Teknorat Ciptakan Smart Kandang Berbasis Internet',
      subtitle:
          'Mahasiswa Universitas Teknokrat Indonesia kembali mendulang prestasi. Kali ini tim yang diketuai Kurniawan Gigih Lutfi Umam, bersama Pipit Rahmayanti dan Syahputra itu mengembangkan sebuah alat yang dapat meningkatkan produksi peternakan ayam petelur menggunakan aplikasi ponsel pintar berbasis internet of things yang diberi nama Smart Kandang. Dengan aplikasi ini, peternak ayam nantinya dapat memonitoring ternak cukup dengan cara melihat pada layar ponsel. Kemudian alat ini juga dilengkapi dengan fitur-fitur layanan, seperti memberi makan ayam secara otomatis, mengatur suhu dan kelembaban kandang, membersihkan kandang, membersihkan kotoran ayam, hingga memvaksin ayam. Cara bekerjanya cukup dengan menekan tombol yang tertera pada layar ponsel, peternak ayam akan mendapatkan layanan sesuai dengan kebutuhan tersebut. Selain cepat dan mudah, alat ini diharapkan dapat mempermudah para peternak ayam di Tanah Air serta dapat meningkatkan produksi telur. Kurniawan mengungkapkan Smart Kandang saat ini sedang dalam proses pemesanan komponen. Pembuatannya ditargetkan selesai akhir Agustus. Umam, sapaan akrabnya, menambahkan untuk menggunakan alat yang mereka buat tersebut, user cukup dengan menekan tombol pemberi makan ayam, secara otomatis alat yang terpasang di dalam kandang dengan sendirinya akan mengeluarkan pakan sesuai dengan takaran atau sesuai standar yang telah ditetapkan oleh Kementrian Peternakan. “Kandang ayam itu kan ada sekat-sekatnya antara ayam satu dengan lainnya. Nah pada setiap sekat, secara otomatis mesin akan berhenti dan memberi pakan sesuai dengan takaran,“ ujarnya. ',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://www.putraperkasa.co.id/wp-content/uploads/2022/06/Awas-Ini-Bahaya-Bau-Kandang-Ayam-dan-Tips-Mencegahnya.jpg',
      category: 'Breaking News',
      imageUrl: 'assets/images/satu.jpg',
      views: 70101,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title: 'Polije Ciptakan Kandang Ayam Smart yang Memanfaatkan Internet',
      subtitle:
          ' Politeknik Negeri Jember (Polije) memamerkan kandang ayam smart, alat sensor untuk mengetahui jumlah telur hingga mengetahui ayam yang produktif dan tidak. "Awalnya berinovasi dengan studi banding, lihat kasus yang ada di lapangan tentang peternakan ayam. Jadi peternakan ayam itu setiap harinya ada yang bagian absen atau mencatat satu kandang ini ada ayamnya bertelur atau tidak," ujar Fendik Eko Purnomo, S.Pd, MT, Kepala Prodi Mekatronika Jurusan Teknik Polije pada TIMES Indonesia, Rabu (31/3/2021). Kandang ayam petelur ini sudah smart dengan memanfaatkan internet. ',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'About',
      imageUrl: 'assets/images/dua.jpg',
      views: 1234,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title: 'Digitalisasi Peternakan Ayam Lewat Smart Farming Pitik',
      subtitle:
          'Perkembangan teknologi digital merambah peternakan ayam lewat teknologi smart farming dan machine learning, seperti yang dikembangkan oleh PT Pitik Digital Indonesia lewat produknya yang bernama Pitik. Baru-baru ini mereka bekerja sama dengan PT Charoen Pokphand Indonesia Tbk (CPI) untuk mengimplementasikan teknologinya di peternak ayam broiler yang terafiliasi dengan grup CPI. "Kerjasama antara Pitik dan CPI ini menjadi langkah penting dalam melakukan proses digitalisasi sektor peternakan ayam di Indonesia, terutama karena CPI merupakan perusahaan agro industri terbesar yang telah beroperasi di Indonesia sejak tahun 1971," kata CEO dan Co-Founder Pitik, Arief Witjaksono, dalam keterangan yang diterima detikINET, Jumat (28/10/2022). Nantinya, teknologi smart farming Pitik akan dieksplorasi untuk dapat meningkatkan efisiensi farm yang terafiliasi dengan grup CPI di seluruh Indonesia. Kolaborasi antara Pitik dan CPI ini merupakan respon Pitik yang mengklaim antusiasme peternak ayam di Indonesia untuk menggunakan teknologi smart farming Pitik terus meningkat. Pitik menyebut pengguna teknologinya meningkat 8 kali lipat dalam 10 bulan terakhir. Saat ini perangkat sensor IoT Pitik telah terpasang di 500 titik di seluruh pulau Jawa. Dalam keterangan yang sama, COO Pitik Rymax Joehana menyebut kalau pencapaian target berat panen ayam broiler di Indonesia masih tertinggal sebesar 20-30% dari standar peternakan di dunia. Akibatnya, pendapatan peternak lokal masih sangat rendah dan sulitnya bagi peternak maupun konsumen untuk memprediksi waktu panen. Teknologi smart farming yang dikembangkan oleh Pitik hadir dengan tujuan memecahkan masalah tersebut. Saat ini, Pitik memiliki perangkat IoT (Internet of Things) yang mampu mendeteksi variabel penting di kandang (temperatur, kelembaban, kadar ammonia, kecepatan angin, dsb) secara real-time dan juga terintegrasi dengan sistem manajemen data berbasis cloud yang didukung oleh teknologi machine learning. Ia menambahkan kalau inilah yang membedakan Pitik dengan teknologi peternakan dari perusahaan lain. Perangkat teknologi smart farming berupa IoT, Camera Tech berbasis AI (Artificial Intelligence), dan Smart Scale ini telah dilakukan uji coba di 5 lokasi farm dengan total populasi ayam 180 ribu ekor.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Fitur',
      imageUrl: 'assets/images/tiga.jpeg',
      views: 1234,
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title:
          'Tingkatkan Smart Farm, Startup Chickin Indonesia Hadirkan Chickin Smart Farm App Berbasis IoT dan AI',
      subtitle:
          'Angka kematian ayam ternak yang tinggi, pengelolaan kandang tidak sistematis, sistem pendataan tradisional hingga lingkup penjualan dan pemasaran sempit jadi alasan startup Chickin Indonesia merilis teknologi aplikasi dan IoT Chickin Smart Farm App. ”Saat ini peternak menjalankan bisnis budidaya ayam broiler dengan perasaan was-was,” kata CEO Chickin Indonesia Tubagus Syailendra. Tubagus menganggap inovasi smart farm sangat penting lewat solusi sistem perkandangan berbasis IoT dan AI Support. ”Sebab dapat membantu peternak melakukan budidaya secara efisien dan optimal,” bebernya. Selain itu, teknologi Chickin Indonesia membuat peternak tidak perlu khawatir dan repot mengenai kondisi cuaca di dalam kandang. Ini dilakukan lewat teknologi Micro Climate Controller (MCC). Fungsinya untuk mengatur suhu dan kelembaban kandang secara otomatis. ”Sebab suhu dan kelembaban bisa diatur secara manual melalui Chickin Smart Farm App yang tersambung ke smartphone peternak,” ungkapnya. Ia melanjutkan, keberadaan IoT dan AI Support di kandang ayam memungkinkan terjadinya budidaya jarak jauh karena proses kontrol yang mudah. Lebih jauh lagi, aplikasi Chickin Smart Farm App menyediakan fitur seperti kontrol dan pengawasan kandang, data administratif, harga ayam, serta konsultasi online. ”Para peternak bisa menyimpan data-data mengenai kandang selama masa budidaya ayam broiler dan juga semua data administrasi kandang mulai dari data harian, sapronak hingga penjualan akhir sampai ke tangan pembeli. Sehingga mereka tidak kewalahan dan repot karena semua permasalahan dapat diselesaikan dengan transparan dan real time dalam satu aplikasi,” beber Tubagus. Melansir dari Sindo News, seberapa besar dampak adopsi teknologi Chickin Smart Farm App bagi para peternak ayam? Menurut Tubagus, peternak dapat meningkatkan produktivitas budidaya hingga 200 juta ayam dalam waktu tiga tahun. Ia mengatakan, fokus Chickin Smart Farm adalah membantu peternak menekan biaya operasionalnya dengan mengefisiensi sistem kandang ternak ayam broiler. ”Teknologi kami berhasil mengurangi angka kematian ayam broiler hingga kurang dari 3% dengan angka keberhasilan panen hampir 100% serta mendapat profit 300%-400% lebih tinggi,” klaimnya. Keunggulan lain adalah aplikasi tersebut diklaim sangat mudah digunakan. Bahkan, mereka sudah dipercaya untuk bekerjasama dengan beberapa mitra yang sudah memiliki nama besar seperti PT Japfa, PT. Trisula Bintang Utama, PT. Charoen Pokphand Indonesia, dan PT. Cheil Jedang (CJ). Tubagus yakin bahwa teknologi memberi peluang bagi para peternak lokal melalui perbaikan teknik budidaya perkandangan tradisional ke teknik budidaya berbasis teknologi yang memudahkan peternak dapat menciptakan efek yang meningkatkan produksi sekaligus dapat bersaing di kancah ekonomi global. ”Kami ingin jadi penggagas peternakan teknologi sehingga pemenuhan pasokan daging ayam menjadi lebih baik dan menguntungkan peternak lokal Indonesia,” ujar Tubagus.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Technology',
      imageUrl: 'assets/images/empat.jpg',
      views: 1234,
      createdAt: DateTime.now().subtract(const Duration(hours: 9)),
    ),
    Article(
      id: '5',
      title:
          'Waktu yang Tepat Memberi Pakan Ayam Bangkok Supaya Peternak Untung Banyak',
      subtitle:
          'Beternak ayam Bangkok atau jenis ayam aduan sangat menjanjikan. Sebab jenis ayam aduan ini tidak memiliki standar harga, bahkan bisa jutaan, tergantung kualitas ayam. Keberhasilan beternak ayam aduan ini tidak hanya ditentukan oleh nutrisi pakan yang diberikan namun juga ditentukan oleh cara pemberian pakan. Pemberian pakan yang sesuai menentukan keberhasilan beternak ayam. Salah seorang peternak Samsul Bahri pemilik Kandang Dadok Farm akan mengurai cara dan waktu yang tepat memberikan makan ayam Bangkok. Menurut Samsul pemberian makan ayam cukup dilakukan dua kali sehari, pagi dan sore. “Sama dengan manusia, ayam juga butuh sarapan di pagi hari. Berikan secukupnya jangan terlalu banyak, bisa berupa dedak atau bekatul dicampur nasi. Jangan terlalu ayam kenyang,” ungkapnya, Rabu, 21 April 2021. Dilanjutkannya, sore sekitar pukul 17:00 WIB ayam diberi makan sampai kenyang. Jika perlu makanan pembuka diberi dedak campur nasi dan sedikit sayuran dan dicampur air secukupnya, lalu diberikan pakan pabrik untuk makan penutup. “Cara seperti ini lebih hemat pakan, dan membuat nafsu makan ayam selalu terjaga,” terang Samsul. Kata Samsul, jangan sesekali mencoba menyedihkan pakan dalam kandang ayam setiap hari. Sebab hal itu bisa menghilangkan nafsu makan ayam, apalagi pakan basah akan menjadi sumber bakteri jahat yang berdampak kepada kesehatan ayam. “Cukup dan pagi dan sore saja, pagi untuk persediaan aktivitas hingga sore, dan sore sampai kenyang untuk malam di mana proses pertumbuhan berlangsung. Hemat dan nafsu makan ayam terjaga,” bebernya. Menurut Samsul, ayam Bangkok juga tidak perlu gemuk, yang penting nutrisi selama pertumbuhan terjaga. Jika gemuk ayam akan lamban dan tidak cocok untuk ayam petarung. “Beda dengan ayam pedaging, ayam Bangkok jenis ayam petarung dan harga juga berbeda. Cara perawatan pun berbeda,” tukasnya.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Food',
      imageUrl: 'assets/images/5.jpg',
      views: 3213,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '6',
      title:
          'Cara Memelihara Ayam di Rumah, Ternyata Mudah Dilakukan oleh Pemula',
      subtitle:
          '1. Memilih Jenis Ayam Sebelum mengetahui langkah cara perawatan ayam, kamu harus memilih jenis unggas yang akan dipelihara. Kamu ingin memelihara ayam petelur, ayam potong, ayam hias seperti ayam pheasant, atau malah ayam aduan. Sebaiknya, kalau memiliki ayam di rumah maka jenis petelur dan potong dalam jumlah banyak harus dihindari. Kotoran, bulu, dan lainnya yang dihasilkan ayam menimbulkan bau yang bisa mengganggu tetangga. 2. Menyiapkan Area yang Cukup Luas Cara memelihara ayam di rumah berikutnya adalah menyiapkan area yang cukup luas,terutama untuk kandang hewan. Kalau kamu hanya memiliki satu dua ekor ayam hias misalnya, maka halaman belakang rumah ukuran 1×2 meter masih cukup. Kecuali kamu memilih untuk mempunyai ayam petelur atau ayam potong, sudah tentu membutuhkan area lebih luas.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Random',
      imageUrl: 'assets/images/6.jpg',
      views: 65478,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '7',
      title: 'Pemanfaatan Limbah Hewan Ternak Menjadi Pupuk Kompos',
      subtitle:
          '1. Memilih Jenis Ayam Sebelum mengetahui langkah cara perawatan ayam, kamu harus memilih jenis unggas yang akan dipelihara. Kamu ingin memelihara ayam petelur, ayam potong, ayam hias seperti ayam pheasant, atau malah ayam aduan. Sebaiknya, kalau memiliki ayam di rumah maka jenis petelur dan potong dalam jumlah banyak harus dihindari. Kotoran, bulu, dan lainnya yang dihasilkan ayam menimbulkan bau yang bisa mengganggu tetangga. 2. Menyiapkan Area yang Cukup Luas Cara memelihara ayam di rumah berikutnya adalah menyiapkan area yang cukup luas,terutama untuk kandang hewan. Kalau kamu hanya memiliki satu dua ekor ayam hias misalnya, maka halaman belakang rumah ukuran 1×2 meter masih cukup. Kecuali kamu memilih untuk mempunyai ayam petelur atau ayam potong, sudah tentu membutuhkan area lebih luas.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Random',
      imageUrl: 'assets/images/7.jpg',
      views: 12424,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '8',
      title:
          'Biogas Limbah Peternakan Sapi Sumber Energi Alternatif Ramah Lingkungan',
      subtitle:
          '1. Memilih Jenis Ayam Sebelum mengetahui langkah cara perawatan ayam, kamu harus memilih jenis unggas yang akan dipelihara. Kamu ingin memelihara ayam petelur, ayam potong, ayam hias seperti ayam pheasant, atau malah ayam aduan. Sebaiknya, kalau memiliki ayam di rumah maka jenis petelur dan potong dalam jumlah banyak harus dihindari. Kotoran, bulu, dan lainnya yang dihasilkan ayam menimbulkan bau yang bisa mengganggu tetangga. 2. Menyiapkan Area yang Cukup Luas Cara memelihara ayam di rumah berikutnya adalah menyiapkan area yang cukup luas,terutama untuk kandang hewan. Kalau kamu hanya memiliki satu dua ekor ayam hias misalnya, maka halaman belakang rumah ukuran 1×2 meter masih cukup. Kecuali kamu memilih untuk mempunyai ayam petelur atau ayam potong, sudah tentu membutuhkan area lebih luas.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Random',
      imageUrl: 'assets/images/8.jpg',
      views: 8305,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '9',
      title:
          'HMJ Peternakan Politeknik Pembangunan Pertanian (Polbangtan) Gowa Rutin Melakukan Vaksinasi PMK',
      subtitle:
          '1. Memilih Jenis Ayam Sebelum mengetahui langkah cara perawatan ayam, kamu harus memilih jenis unggas yang akan dipelihara. Kamu ingin memelihara ayam petelur, ayam potong, ayam hias seperti ayam pheasant, atau malah ayam aduan. Sebaiknya, kalau memiliki ayam di rumah maka jenis petelur dan potong dalam jumlah banyak harus dihindari. Kotoran, bulu, dan lainnya yang dihasilkan ayam menimbulkan bau yang bisa mengganggu tetangga. 2. Menyiapkan Area yang Cukup Luas Cara memelihara ayam di rumah berikutnya adalah menyiapkan area yang cukup luas,terutama untuk kandang hewan. Kalau kamu hanya memiliki satu dua ekor ayam hias misalnya, maka halaman belakang rumah ukuran 1×2 meter masih cukup. Kecuali kamu memilih untuk mempunyai ayam petelur atau ayam potong, sudah tentu membutuhkan area lebih luas.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Random',
      imageUrl: 'assets/images/9.jpg',
      views: 73950,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '10',
      title: 'Bagaimana Penerapan Internet of Things dalam Dunia',
      subtitle:
          '1. Memilih Jenis Ayam Sebelum mengetahui langkah cara perawatan ayam, kamu harus memilih jenis unggas yang akan dipelihara. Kamu ingin memelihara ayam petelur, ayam potong, ayam hias seperti ayam pheasant, atau malah ayam aduan. Sebaiknya, kalau memiliki ayam di rumah maka jenis petelur dan potong dalam jumlah banyak harus dihindari. Kotoran, bulu, dan lainnya yang dihasilkan ayam menimbulkan bau yang bisa mengganggu tetangga. 2. Menyiapkan Area yang Cukup Luas Cara memelihara ayam di rumah berikutnya adalah menyiapkan area yang cukup luas,terutama untuk kandang hewan. Kalau kamu hanya memiliki satu dua ekor ayam hias misalnya, maka halaman belakang rumah ukuran 1×2 meter masih cukup. Kecuali kamu memilih untuk mempunyai ayam petelur atau ayam potong, sudah tentu membutuhkan area lebih luas.',
      body: 'hashasdauhsduahsuhahsasuhashuashuahsashashdua',
      author: 'Agil Andriansyah',
      authorImageUrl:
          'https://idwebhost.com/blog/wp-content/uploads/2017/11/http_blue_background_by_soulart2012-d5fu5n2.jpg',
      category: 'Random',
      imageUrl: 'assets/images/10.jpg',
      views: 73950,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
