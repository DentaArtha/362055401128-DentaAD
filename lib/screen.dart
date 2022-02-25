import 'package:flutter/material.dart';

class HalamanSatu extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HalamanSatu> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/1.jpg'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '362055401128',
      decoration: InputDecoration(
        hintText: 'Nomor Peserta',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'Password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/start');
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Masuk', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Lupa password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Alyssa Skincare",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    background: Image(
                      image: NetworkImage('https://cdn.pixabay.com/photo/2017/11/20/08/52/gazania-2964818_1280.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: new EdgeInsets.all(10.0),
                  sliver: new SliverList(
                    delegate: new SliverChildListDelegate([
                      TabBar(
                        labelColor: Colors.black87,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          new Tab(icon: new Icon(Icons.assignment), text: "Daftar Jurusan"),
                          new Tab(icon: new Icon(Icons.money), text: "Informasi"),
                          new Tab(icon: new Icon(Icons.description), text: "Cetak Kartu Peserta"),
                        ],
                      ),
                    ]),
                  ),
                ),
              ];
            },
            body: TabBarView(children: [
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(barang[index], style: TextStyle(fontSize: 25)),
                      subtitle: Text('Product Barang yang Sedang Trend Saat ini ' + barang[index]),
                      leading: CircleAvatar(
                        child: Text(barang[index][0],
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  );
                },
                itemCount: barang.length,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(harga[index], style: TextStyle(fontSize: 25)),
                      subtitle: Text(barang[index] + ' memiliki harga ' + harga[index]),
                      leading: CircleAvatar(
                        child: Text(harga[index][0],
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  );
                },
                itemCount: harga.length,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(keterangan[index], style: TextStyle(fontSize: 25)),
                      subtitle: Text(barang[index] + ' mempunyai fungsi ' + keterangan[index]),
                      leading: CircleAvatar(
                        child: Text(keterangan[index][0],
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  );
                },
                itemCount: keterangan.length,
              ),
            ])),
      ),
    );
  }

  final List barang = [
    "Teknik Informatika",
    "Teknik Sipil",
    "Teknik Mesin",
    "Agribisnis",
    "Managemen Bisnis Pariwisata",
  ];
  final List harga = [
    "Syarat Pendaftaran",
    "Jadwal SBMPN",
    "Jadwal PKKMB",
    "Jadwal Perkuliahan",
  ];
  final List keterangan = [
    "Mencerahkan Kulit Wajah",
    "Melindungi wajah dari Paparan Sinar Matahari",
    "Membersihkan dan Menyegarkan Kulit Wajah"
        "Melembabkan dan Mencerahkan wajah di Siang Hari",
    "Melindungi Wajah di Malam Hari",
    "Merawat Kulit Setiap Hari",
    "Menjaga Kelembapan Kulit",
    "Menghindari Adanya Mata Panda",
    "Membantu Menghilangkan Jerawat pada Kulit",
    "Membantu Merawat Kecerahan Kulit Wajah",
  ];
}
