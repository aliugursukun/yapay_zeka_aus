import 'package:flutter/material.dart';

void main() {
  runApp(YapayZekaAusApp());
}

class YapayZekaAusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yapay Zeka Aus',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(title: Text('Yapay Zeka Aus')),
        body: SoruCevapPanel(),
      ),
    );
  }
}

class SoruCevapPanel extends StatefulWidget {
  @override
  _SoruCevapPanelState createState() => _SoruCevapPanelState();
}

class _SoruCevapPanelState extends State<SoruCevapPanel> {
  final TextEditingController _controller = TextEditingController();
  String cevap = '';

  void soruyuCevapla(String soru) {
    setState(() {
      cevap = "🌟 Kendin Ol: $soru"; // Örnek cevap
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                cevap,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: 'Sorunu yaz...'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () => soruyuCevapla(_controller.text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
