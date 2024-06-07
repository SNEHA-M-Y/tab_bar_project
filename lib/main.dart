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
      title: 'Tab Bar Project',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 205, 232),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: TabBar(
            padding: EdgeInsets.only(top: 40),
            labelStyle: TextStyle(fontSize: 20, color: Colors.black),
            tabs: [
              Tab(
                text: "🏠 Home",
              ),
              Tab(
                text: "👛 Wallet",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [customhome(), ScreenWallet()],
        ),
      ),
    );
  }
}

bool switchValue = true;

class customhome extends StatelessWidget {
  const customhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 249, 244, 244),
            Color.fromARGB(255, 132, 120, 226)
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Screen Home",
            style: GoogleFonts.alegreyaSc(
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

class ScreenWallet extends StatefulWidget {
  const ScreenWallet({super.key});

  @override
  State<ScreenWallet> createState() => _ScreenWalletState();
}

class _ScreenWalletState extends State<ScreenWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 229, 102, 144),
              Color.fromARGB(255, 114, 223, 220),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Screen Wallet",
                style: GoogleFonts.zenKakuGothicAntique(
                    textStyle:
                        const TextStyle(color: Colors.black, fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
