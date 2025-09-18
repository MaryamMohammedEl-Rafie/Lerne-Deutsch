import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/card_model.dart';
import 'package:lerne_deutsch/models/data_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsPage extends StatefulWidget {
  ColorsPage({super.key});

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
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

  final List<DataModel> colorsCards = const [
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/weiß.png',
      deTxt: 'Weiß',
      enTxt: 'White',
      audio: 'audio/colors_audio/weiß.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/gelb.png',
      deTxt: 'Gelb',
      enTxt: 'Yellow',
      audio: 'audio/colors_audio/gelb.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/orange.png',
      deTxt: 'Orange',
      enTxt: 'Orange',
      audio: 'audio/colors_audio/orange.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/rot.png',
      deTxt: 'Rot',
      enTxt: 'Red',
      audio: 'audio/colors_audio/rot.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/rosa.png',
      deTxt: 'Rosa',
      enTxt: 'Pink',
      audio: 'audio/colors_audio/rosa.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/lila.png',
      deTxt: 'Lila',
      enTxt: 'Purple',
      audio: 'audio/colors_audio/lila.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/blau.png',
      deTxt: 'Blau',
      enTxt: 'Blue',
      audio: 'audio/colors_audio/blau.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/grün.png',
      deTxt: 'Grün',
      enTxt: 'Green',
      audio: 'audio/colors_audio/grün.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/braun.png',
      deTxt: 'Braun',
      enTxt: 'Brown',
      audio: 'audio/colors_audio/braun.mp3',
    ),

    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/grau.png',
      deTxt: 'Grau',
      enTxt: 'Gray',
      audio: 'audio/colors_audio/grau.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFE9D5FF),
      cardTxtColor: Color(0xFF4C1D95),
      image: 'assets/images/colors_images/schwarz.png',
      deTxt: 'Schwarz',
      enTxt: 'Black',
      audio: 'audio/colors_audio/schwarz.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9D5FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF4C1D95),
        title: Text(
          'Colors',
          style: TextStyle(color: Color(0xFFE9D5FF), fontSize: 32),
        ),
        iconTheme: IconThemeData(color: Color(0xFFE9D5FF), size: 32),
      ),
      body: ListView.builder(
        itemCount: colorsCards.length,
        itemBuilder: (context, index) {
          return CardModel(card: colorsCards[index], player: player);
        },
      ),
    );
  }
}
