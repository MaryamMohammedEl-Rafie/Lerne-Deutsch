import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/card_model.dart';
import 'package:lerne_deutsch/models/data_model.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesPage extends StatefulWidget {
  PhrasesPage({super.key});

  @override
  State<PhrasesPage> createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
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

  final List<DataModel> phrasesCards = const [
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Hallo',
      enTxt: 'Hello',
      audio: 'audio/phrases_audio/hallo.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Guten Morgen',
      enTxt: 'Good morning',
      audio: 'audio/phrases_audio/guten_morgen.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Guten Tag',
      enTxt: 'Good day',
      audio: 'audio/phrases_audio/guten_tag.mp3',
    ),

    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Grüß Gott',
      enTxt: 'Good day',
      audio: 'audio/phrases_audio/grüß_gott.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Guten Abend',
      enTxt: 'Good Evening',
      audio: 'audio/phrases_audio/guten_abend.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Auf Wiedersehen',
      enTxt: 'Goodbye (formal)',
      audio: 'audio/phrases_audio/auf_weidersehen.mp3',
    ),

    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Tschüss',
      enTxt: 'Goodbye (informal)',
      audio: 'audio/phrases_audio/tschüss.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Ciao',
      enTxt: 'Goodbye (informal)',
      audio: 'audio/phrases_audio/ciao.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Ja',
      enTxt: 'Yes',
      audio: 'audio/phrases_audio/ja.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Nein',
      enTxt: 'No',
      audio: 'audio/phrases_audio/nein.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Vielleicht',
      enTxt: 'Maybe',
      audio: 'audio/phrases_audio/vielleicht.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: ' Dankeschön',
      enTxt: 'Thank you',
      audio: 'audio/phrases_audio/dankeschön.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Danke',
      enTxt: 'Thanks',
      audio: 'audio/phrases_audio/danke.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFBBF7D0),
      cardTxtColor: Color(0xFF065F46),
      deTxt: 'Bitte',
      enTxt: 'You are welcome/ please',
      audio: 'audio/phrases_audio/bitte.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBBF7D0),
      appBar: AppBar(
        backgroundColor: Color(0xFF065F46),
        title: Text(
          'Basic phrases',
          style: TextStyle(color: Color(0xFFBBF7D0), fontSize: 32),
        ),
        iconTheme: IconThemeData(color: Color(0xFFBBF7D0), size: 32),
      ),
      body: ListView.builder(
        itemCount: phrasesCards.length,
        itemBuilder: (context, index) {
          return CardModel(card: phrasesCards[index], player: player);
        },
      ),
    );
  }
}
