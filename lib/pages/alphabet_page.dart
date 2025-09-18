import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/card_model.dart';
import 'package:lerne_deutsch/models/data_model.dart';

class AlphabetPage extends StatefulWidget {
  AlphabetPage({super.key});

  @override
  State<AlphabetPage> createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  late final AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  final List<DataModel> alphabetCards = const [
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/a.png',
      deTxt: 'A',
      audio: 'audio/alphabet_audio/a.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/b.png',
      deTxt: 'B',
      audio: 'audio/alphabet_audio/b.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/c.png',
      deTxt: 'C',
      audio: 'audio/alphabet_audio/c.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/d.png',
      deTxt: 'D',
      audio: 'audio/alphabet_audio/d.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/e.png',
      deTxt: 'E',
      audio: 'audio/alphabet_audio/e.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/f.png',
      deTxt: 'F',
      audio: 'audio/alphabet_audio/f.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/g.png',
      deTxt: 'G',
      audio: 'audio/alphabet_audio/g.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/h.png',
      deTxt: 'H',
      audio: 'audio/alphabet_audio/h.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/i.png',
      deTxt: 'I',
      audio: 'audio/alphabet_audio/i.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/j.png',
      deTxt: 'J',
      audio: 'audio/alphabet_audio/j.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/k.png',
      deTxt: 'K',
      audio: 'audio/alphabet_audio/k.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/l.png',
      deTxt: 'L',
      audio: 'audio/alphabet_audio/l.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/m.png',
      deTxt: 'M',
      audio: 'audio/alphabet_audio/m.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/n.png',
      deTxt: 'N',
      audio: 'audio/alphabet_audio/n.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/o.png',
      deTxt: 'O',
      audio: 'audio/alphabet_audio/o.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/p.png',
      deTxt: 'P',
      audio: 'audio/alphabet_audio/p.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/q.png',
      deTxt: 'Q',
      audio: 'audio/alphabet_audio/q.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/r.png',
      deTxt: 'R',
      audio: 'audio/alphabet_audio/r.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/s.png',
      deTxt: 'S',
      audio: 'audio/alphabet_audio/s.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/t.png',
      deTxt: 'T',
      audio: 'audio/alphabet_audio/t.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/u.png',
      deTxt: 'U',
      audio: 'audio/alphabet_audio/u.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/v.png',
      deTxt: 'V',
      audio: 'audio/alphabet_audio/v.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/w.png',
      deTxt: 'W',
      audio: 'audio/alphabet_audio/w.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/x.png',
      deTxt: 'X',
      audio: 'audio/alphabet_audio/x.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/y.png',
      deTxt: 'Y',
      audio: 'audio/alphabet_audio/y.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/z.png',
      deTxt: 'Z',
      audio: 'audio/alphabet_audio/z.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/ä.png',
      deTxt: 'Ä',
      audio: 'audio/alphabet_audio/ä.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/ö.png',
      deTxt: 'Ö',
      audio: 'audio/alphabet_audio/ö.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/ü.png',
      deTxt: 'Ü',
      audio: 'audio/alphabet_audio/ü.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFC7D2FE),
      cardTxtColor: Color(0xFF1E3A8A),
      image: 'assets/images/alphabet_images/ß.png',
      deTxt: 'ß',
      audio: 'audio/alphabet_audio/ß.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC7D2FE),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3A8A),
        title: Text(
          'Alphabet',
          style: TextStyle(color: Color(0xFFC7D2FE), fontSize: 32),
        ),
        iconTheme: IconThemeData(color: Color(0xFFC7D2FE), size: 32),
      ),
      body: ListView.builder(
        itemCount: alphabetCards.length,
        itemBuilder: (context, index) {
          return CardModel(card: alphabetCards[index], player: player);
        },
      ),
    );
  }
}
