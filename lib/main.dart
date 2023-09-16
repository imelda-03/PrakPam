import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill in the form below to Login'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/Login.png', // Ganti dengan path gambar yang sesuai
              width: 500,
              height: 500,
            ),
            SizedBox(height: 20),
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder (
                    borderSide: const BorderSide(color: Colors.pink,width: 2.0 ),
                    borderRadius: BorderRadius.zero,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0,top: 20.0,bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                      const BorderSide(color: Colors.pink,width: 2.0),
                    borderRadius: BorderRadius.zero,
                  ),
                  suffixIcon: Icon(
                    Icons.person
                  ),
                  labelText: 'Username',
                  hintText: 'Masukkan username',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.pink, width:2.0),
                    borderRadius:BorderRadius.zero,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom:20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.pink, width:2.0),
                    borderRadius: BorderRadius.zero,
                  ),
                  suffixIcon: Icon
                    (Icons.lock
                  ),
                labelText: 'Password',
                hintText: 'Masukkan password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implementasi aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.pink, // Warna latar button hijau
                minimumSize: Size(150, 50), // Ukuran button
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}