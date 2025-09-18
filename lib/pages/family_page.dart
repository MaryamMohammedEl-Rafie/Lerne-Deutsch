import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/card_model.dart';
import 'package:lerne_deutsch/models/data_model.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyPage extends StatefulWidget {
  FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
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

  final List<DataModel> familyCards = const [
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/großvater.png',
      deTxt: 'Großvater (Opa)',
      enTxt: 'Grandfather',
      audio: 'audio/family_audio/großvater_opa.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/großmutter.png',
      deTxt: 'Großmutter (Oma)',
      enTxt: 'Grandmother',
      audio: 'audio/family_audio/großmutter_oma.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/enkel.png',
      deTxt: 'Enkel',
      enTxt: 'Grandson',
      audio: 'audio/family_audio/enkel.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/enklin.png',
      deTxt: 'Enklin',
      enTxt: 'Granddaughter',
      audio: 'audio/family_audio/enklin.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/vater.png',
      deTxt: 'Vater',
      enTxt: 'Father',
      audio: 'audio/family_audio/vater.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/mutter.png',
      deTxt: 'Mutter',
      enTxt: 'Mother',
      audio: 'audio/family_audio/mutter.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/sohn.png',
      deTxt: 'Sohn',
      enTxt: 'Son',
      audio: 'audio/family_audio/sohn.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/tochter.png',
      deTxt: 'Tochter',
      enTxt: 'Daughter',
      audio: 'audio/family_audio/tochter.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/bruder.png',
      deTxt: 'Bruder',
      enTxt: 'Brother',
      audio: 'audio/family_audio/bruder.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/schwester.png',
      deTxt: 'Schwester',
      enTxt: 'Sister',
      audio: 'audio/family_audio/schwester.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/onkel.png',
      deTxt: 'Onkel',
      enTxt: 'Uncle',
      audio: 'audio/family_audio/onkel.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/tante.png',
      deTxt: 'Tante',
      enTxt: 'Aunt',
      audio: 'audio/family_audio/tante.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/ehemann.png',
      deTxt: 'Ehemann',
      enTxt: 'Husband',
      audio: 'audio/family_audio/ehemann.mp3',
    ),
    DataModel(
      cardColor: Color(0xFFFEF08A),
      cardTxtColor: Color(0xFF78350F),
      image: 'assets/images/family_images/ehefrau.png',
      deTxt: 'Ehefrau',
      enTxt: 'Wife',
      audio: 'audio/family_audio/ehefrau.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF08A),
      appBar: AppBar(
        backgroundColor: Color(0xFF78350F),
        title: Text(
          'Family',
          style: TextStyle(color: Color(0xFFFEF08A), fontSize: 32),
        ),
        iconTheme: IconThemeData(color: Color(0xFFFEF08A), size: 32),
      ),
      body: ListView.builder(
        itemCount: familyCards.length,
        itemBuilder: (context, index) {
          return CardModel(card: familyCards[index], player: player);
        },
      ),
    );
  }
}
