import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kartu Nama',
      home: KartuNama(),
    );
  }
}

class KartuNama extends StatelessWidget {
  const KartuNama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 1. Foto Profil
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(
                  // Menggunakan UI Avatars yang lebih ramah untuk Flutter Web
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/685c0514-5c6e-4a1a-aa16-ce73f4f49615/da33zkv-375b39eb-f5da-4e5e-a80d-16784ad83aca.png/v1/fill/w_1024,h_577,q_80,strp/obito_uchiha_by_loraxdude_da33zkv-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc3IiwicGF0aCI6IlwvZlwvNjg1YzA1MTQtNWM2ZS00YTFhLWFhMTYtY2U3M2Y0ZjQ5NjE1XC9kYTMzemt2LTM3NWIzOWViLWY1ZGEtNGU1ZS1hODBkLTE2Nzg0YWQ4M2FjYS5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.1nExPqUNCXsn8nw_WiOdJ4kOXZ2ocD-jq4DykT4jGs4',
                ),
              ),
              const SizedBox(height: 15.0),

              // 2. Nama
              Text(
                'Obito Uchiha',
                style: GoogleFonts.poppins(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Garis Pembatas
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(color: Colors.blueGrey.shade200),
              ),

              // 3. Nomor HP
              Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: const Color(0xFF0F3460),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.white),
                  title: Text(
                    '0859 8765 4321',
                    style: GoogleFonts.sourceSans3(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),

              // 4. Instagram
              Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: const Color(0xFF0F3460),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  leading: const Icon(Icons.camera_alt, color: Colors.white),
                  title: Text(
                    '@uchihaobito_',
                    style: GoogleFonts.sourceSans3(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
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
