import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STS Mobile',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: 'STS Mobile',
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
    'Tempat, Tanggal Lahir :',
    '•Brebes, 1-12-2026',
    'Alamat :', 
    '•Bandung', 
    'Jenis Kelamin :',
    '•Laki-laki',
    'Agama :',
    '•Islam',
    'Kewarnegaraan :',
    '•Indonesia',
  ];
  final List<String> pendidikan = [
    '•SDN Cijati 02',
    '•SMPN 3 Cileunyi',
    '•SMK Bakti Nusantara 666',
  ];
  final List<String> pengalaman = [
    'Paskibra (2019 - 2020)',
    '•Juara peringkat harapan 1',
    'BNCC (2022 - 2022)',
    '•Mengikuti bncc di Sekolah'
  ];
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.photo_library)),
            ]),
            title: const Text("My App"),
          ),
          body: TabBarView(
            children: [
      SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                        child: Container(
                          color: Colors.blue,
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                  'assets/foto.jpeg',
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              const Text(
                                'M. Daffa Syauki',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Jurusan PPLG',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                description.first,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Keahlian',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: keahlian
                                    .map(
                                      (skill) => Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Kontak',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: kontak
                                    .map(
                                      (contact) => Text(
                                        contact,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35.0),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Data Pribadi',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: dataPribadi
                                    .map(
                                      (info) => Text(
                                        info,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35.0),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Pengalaman',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: pengalaman
                                    .map(
                                      (exp) => Text(
                                        exp,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Pendidikan',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: pendidikan
                                    .map(
                                      (education) => Text(
                                        education,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const Text(
                'Galeri Foto',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 3 - 12.0,
                      height: MediaQuery.of(context).size.width / 3 - 12.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage (
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
                        image: const DecorationImage (
                          image: AssetImage('assets/galeri2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      borderRadius: BorderRadius.circular(12.0),
                      ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 3 - 12.0,
                      height: MediaQuery.of(context).size.width / 3 - 12.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage (
                          image: AssetImage('assets/galeri3.jpeg'),
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
            ],
          ),
        ),
      ),
    );
  }
}