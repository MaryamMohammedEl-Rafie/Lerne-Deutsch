import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/card_model.dart';
import 'package:lerne_deutsch/models/data_model.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersPage extends StatefulWidget {
  NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
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

  final List<DataModel> numbersCards = const [
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/null.png',
      deTxt: 'Null',
      enTxt: 'Zero',
      audio: 'audio/numbers_audio/null.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/eins.png',
      deTxt: 'Eins',
      enTxt: 'One',
      audio: 'audio/numbers_audio/eins.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/zwei.png',
      deTxt: 'Zwei',
      enTxt: 'Two',
      audio: 'audio/numbers_audio/zwei.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/drei.png',
      deTxt: 'Drei',
      enTxt: 'Three',
      audio: 'audio/numbers_audio/drei.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/vier.png',
      deTxt: 'Vier',
      enTxt: 'Four',
      audio: 'audio/numbers_audio/vier.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/fünf.png',
      deTxt: 'Fünf',
      enTxt: 'Five',
      audio: 'audio/numbers_audio/fünf.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/sechs.png',
      deTxt: 'Sechs',
      enTxt: 'Six',
      audio: 'audio/numbers_audio/sechs.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/sieben.png',
      deTxt: 'Sieben',
      enTxt: 'Seven',
      audio: 'audio/numbers_audio/sieben.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/acht.png',
      deTxt: 'Acht',
      enTxt: 'Eight',
      audio: 'audio/numbers_audio/acht.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/neun.png',
      deTxt: 'Neun',
      enTxt: 'Nine',
      audio: 'audio/numbers_audio/neun.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFED7AA),
      cardTxtColor: Color(0xFF7C2D12),
      image: 'assets/images/numbers_images/zehn.png',
      deTxt: 'Zehn',
      enTxt: 'Ten',
      audio: 'audio/numbers_audio/zehn.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFED7AA),
      appBar: AppBar(
        backgroundColor: Color(0xFF7C2D12),
        title: Text(
          'Numbers',
          style: TextStyle(color: Color(0xFFFED7AA), fontSize: 32),
        ),
        iconTheme: IconThemeData(color: Color(0xFFFED7AA), size: 32),
      ),
      body: ListView.builder(
        itemCount: numbersCards.length,
        itemBuilder: (context, index) {
          return CardModel(card: numbersCards[index], player: player);
        },
      ),
    );
  }
}
