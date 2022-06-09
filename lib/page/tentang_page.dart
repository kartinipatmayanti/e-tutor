import 'package:flutter/material.dart';

class TentangKami extends StatefulWidget {
  const TentangKami({Key? key}) : super(key: key);

  @override
  _TentangKamiState createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff0e1446)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 120, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tentang E-Tutor",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/bg_etutor.png",
                      width: 330,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250, right: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff44aca0)),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        title: Center(
                                            child: Text("Profil")),
                                        content: SingleChildScrollView(
                                          child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 300.0,
                                          width: 300.0,
                                          child: Image.asset(('assets/images/Patma.png')
                                          )
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 20.0),
                                        ),
                                        Text(
                                          'Patmayanti Kartini, Lahir di Bontang, 11 April 2000. Mahasiswi semester 6 Sistem Informasi di Universitas Islam Negeri Alauddin Makassar. Belajar bahasa Inggris itu sangat penting, terutama dalam hal pendidikan. Selain itu, melalui bahasa Inggris kita bisa memperkenalkan keanekaragaman budaya dan bahasa bangsa ini kepada mereka yang tentu ingin mengetahui tentang bangsa ini. Sangat dibutuhkannya bahasa Inggris dalam kancah nasional maupun internasional.',
                                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10.0),
                                        ),
                                        Text(
                                          '"Life is about moment, don\'t wait for them, create them."',
                                          style: TextStyle(fontSize: 16.0, color: Colors.black,
                                          fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.center,
                                        ),
                                        Container(
                                          height: 300.0,
                                          width: 300.0,
                                          child: Image.asset(('assets/images/Rifdah.png')
                                          )
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 20.0),
                                        ),
                                        Text(
                                          'Hallo, nama saya Nur Rifdah. Saya merupakan mahasiswi jurusan Sistem Informasi di UIN Alauddin Makassar angkatan 2019. Menguasai beragam software seperti Adobe Illustrator, CorelDRAW, Adobe Photoshop. Berpengalaman dalam pembuatan storyboard, mock-up, dan visual untuk berbagai kebutuhan pemasaran.',
                                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10.0),
                                        ),
                                        Text(
                                          '"The best way to get started is to quit talking and begin doing"',
                                          style: TextStyle(fontSize: 16.0, color: Colors.black,
                                          fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.center,
                                        ),
                                        Container(
                                          height: 300.0,
                                          width: 300.0,
                                          child: Image.asset(('assets/images/Fira.png')
                                          )
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 20.0),
                                        ),
                                        Text(
                                          'Asfira Muhri, lahir di Bone pada 23 September 2001 dan sekarang menetap di Makassar. Menyelesaikan pendidikan dasar di SD Inp 10/73 Patangkai pada tahun 2013, dan melanjutkan pendidikan di SMP Negeri 1 Lappariaja dan SMA Negeri 5 Bone, Sekarang, tengah menempuh studi strata satu semester enam di Universitas Islam Negeri Alauddin Makassar Fakultas Sains dan Teknologi, dan mengambil konsentrasi pada bidang peminatan Sistem Informasi. Pengalaman organisasi di kampus sebagai Kepala Bidang Departemen Keilmuan Himpunan Mahasiswa Jurusan Sistem Informasi UIN Alauddin Makassar, serta anggota kepanitiaan di beberapa acara kampus.',
                                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10.0),
                                        ),
                                        Text(
                                          '"Life is a journey to be experienced, not a problem to be solved"',
                                          style: TextStyle(fontSize: 16.0, color: Colors.black,
                                          fontStyle: FontStyle.italic),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                      ),
                                        ),
                                      )
                                      );
                            },
                            child: Center(
                              child: Text(
                                "Profil",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "E-Tutor",
                        style: TextStyle(
                            color: Color(0xff0e1446),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: 
                      Text(
                        "E-Tutor adalah aplikasi pembelajaran bahasa inggris yang akan menampilkan materi seputar kaidah dan aturan bahasa Inggris. Dengan begitu pengguna bisa mengikuti pembelajaran sesuai melalui materi yang telah diberikan. Dengan belajar bahasa Inggris lewat aplikasi E-Tutor, tentunya bisa menambah pengetahuan atau kosa kata kita dalam bahasa Inggris. Apalagi saat ini bahasa Inggris dalam bidang profesional sangat dibutuhkan terutama bagi mereka yang bekerja di perusahaan multinasional.",
                        style: TextStyle(
                            color: Color(0xff0e1446),
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                            textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                    ),
                ),
              ),
              ],
            ),
        ),
    );
  }
}
