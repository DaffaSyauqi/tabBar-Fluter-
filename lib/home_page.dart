import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 100 Days',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 final List<String> description = [
    "Saya sekolah di SMK Bakti Nusantara 666, dikelas XI jurusan PPLG",
  ];
  final List<String> keahlian = [
    '•HTML CSS',
    '•JS Dasar',
    '•Microsoft Office',
  ];
  final List<String> kontak = [
    '•+62 882-1805-3372',
    '•daffasyauqi77@gmail.com',
    '•@daffasyauqi_12',
  ];
  final List<String> dataPribadi = [
    '•Tempat, Tanggal Lahir: Brebes, 1 Desember 2006',
    '•Alamat: Bandung', 
    '•Jenis Kelamin: Laki-laki',
    '•Agama: Islam',
    '•Kewarnegaraan: Indonesia',
  ];
  final List<String> pendidikan = [
    '•SDN Cijati 02',
    '•SMPN 3 Cileunyi',
    '•SMK Bakti Nusantara 666',
  ];
  final List<String> pengalaman = [
    'Paskibra (2019 - 2020)',
    '•Menjuarai lomba, peringkat harapan 1',
    'BNCC (2022 - 2022)',
    '•Mengikuti bncc di Sekolah'
  ];
  final List<String> hobi = [
    '•Bermain Game',
    '•Mendengarkan Musik',
    '•Membaca',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.photo_library)),
              Tab(icon: Icon(Icons.calculate)),
            ]),
            title: const Text("Tab Bar"),
          ),
          body: TabBarView(
            children: [
              Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: 200,
              height: 775,
              color: Colors.blue,
              child: Column(children: [
                const SizedBox(height: 15.0),
                const Align(
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage(
                      'assets/foto.jpeg',
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'M. Daffa Syauki',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Align(
                  child: Text(
                    'Jurusan PPLG',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Align(
                  child: Text(
                    description.first,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Keahlian',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  children: keahlian
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Kontak',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  children: kontak
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ]),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 30.0,
            child: Container(
              width: 195,
              height: 775,
              child: Column(children: [
                const SizedBox(height: 15.0),
                const Align(
                  child: Text(
                    'Data Pribadi',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: dataPribadi
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Pendidikan',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: pendidikan
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Pengalaman',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: pengalaman
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 25.0),
                const Align(
                  child: Text(
                    'Hobi',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: hobi
                      .map(
                        (skill) => Align(
                          child: Text(
                            skill,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ]),
            ),
          ),
        ],
      ),
      Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        'Galeri Foto',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3 - 12.0,
                            height: MediaQuery.of(context).size.width / 3 - 12.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/galeri1.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3 - 12.0,
                            height: MediaQuery.of(context).size.width / 3 - 12.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/image1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3 - 12.0,
                            height: MediaQuery.of(context).size.width / 3 - 12.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/image2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

      Text('test'),
            ],
          ),
      ),
    ),
    );
  }
}