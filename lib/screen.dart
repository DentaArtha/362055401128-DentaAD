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
      initialValue: '362055401117',
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
                          new Tab(icon: new Icon(Icons.description), text: "Pembayaran"),
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
                      title: Text(jurusan[index], style: TextStyle(fontSize: 25)),
                      subtitle: Text('Program Study: ' + jurusan[index]),
                      leading: CircleAvatar(
                        child: Text(jurusan[index][0],
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  );
                },
                itemCount: jurusan.length,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(informasi[index], style: TextStyle(fontSize: 25)),
                      subtitle: Text(jurusan[index] + ' Pada tanggal 11 Juli 2030 ' + informasi[index]),
                      leading: CircleAvatar(
                        child: Text(informasi[index][0],
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  );
                },
                itemCount: informasi.length,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(pembayaran[index], style: TextStyle(fontSize: 25)),
                      subtitle: Text(jurusan[index] + ' Biaya pembayarannya :  ' + pembayaran[index]),
                      leading: CircleAvatar(
                        child: Text(pembayaran[index][0],
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  );
                },
                itemCount: pembayaran.length,
              ),
            ])),
      ),
    );
  }

  final List jurusan = [
    "Teknik Informatika",
    "Teknik Sipil",
    "Teknik Mesin",
    "Agribisnis",
    "Managemen Bisnis Pariwisata",
  ];
  final List informasi = [
    "Jadwal Pendaftaran",
    "Jadwal SBMPN",
    "Jadwal PKKMB",
    "Jadwal Perkuliahan",
  ];
  final List pembayaran = [
    "Rp. 3.000.000",
    "Rp. 3.000.000",
    "Rp. 3.000.000",
    "Rp. 3.000.000",
    "Rp. 3.000.000",
  ];
}
