import 'package:flutter/material.dart';
import 'package:lerne_deutsch/pages/alphabet_page.dart';
import 'package:lerne_deutsch/pages/numbers_page.dart';
import 'package:lerne_deutsch/pages/phrases_page.dart';
import 'package:lerne_deutsch/pages/family_page.dart';
import 'package:lerne_deutsch/pages/colors_page.dart';
import 'package:lerne_deutsch/models/home_card_model.dart';
import 'package:lerne_deutsch/models/home_data_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<HomeDataModel> homeCards = const [
    HomeDataModel(
      homeTxt: 'Alphabet',
      homeTxtColor: Color(0xFF1E3A8A),
      homeCardColor: Color(0xFFC7D2FE),
    ),
    HomeDataModel(
      homeTxt: 'Numbers',
      homeTxtColor: Color(0xFF7C2D12),
      homeCardColor: Color(0xFFFED7AA),
    ),
    HomeDataModel(
      homeTxt: 'Basic phrases',
      homeTxtColor: Color(0xFF065F46),
      homeCardColor: Color(0xFFBBF7D0),
    ),
    HomeDataModel(
      homeTxt: 'Family',
      homeTxtColor: Color(0xFF78350F),
      homeCardColor: Color(0xFFFEF08A),
    ),
    HomeDataModel(
      homeTxt: 'Colors',
      homeTxtColor: Color(0xFF4C1D95),
      homeCardColor: Color(0xFFE9D5FF),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E7EB),
        centerTitle: true,
        title: Text(
          'Lerne Deutsch',
          style: TextStyle(color: Color(0xFF111827), fontSize: 32),
        ),
      ),
      body: ListView.builder(
        itemCount: homeCards.length,
        itemBuilder: (context, index) {
          return HomeCardModel(
            homeCard: homeCards[index],
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return (AlphabetPage());
                      },
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NumbersPage()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhrasesPage()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FamilyPage()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorsPage()),
                  );
                  break;
              }
            },
          );
        },
      ),
    );
  }
}
