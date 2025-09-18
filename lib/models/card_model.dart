import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lerne_deutsch/models/data_model.dart';

class CardModel extends StatefulWidget {
  CardModel({Key? key, required this.card, required this.player})
    : super(key: key);
  final DataModel card;
  final AudioPlayer player;

  @override
  State<CardModel> createState() => _CardModelState();
}

class _CardModelState extends State<CardModel> {
  void _playSound(String assetPath) async {
    await widget.player.stop();
    await widget.player.play(AssetSource(assetPath));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(2, 2, 8, 2),
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.card.cardColor,
        border: Border(bottom: BorderSide(color: widget.card.cardTxtColor)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          if (widget.card.image != null) ...[
            Container(
              height: 120,
              width: 80,

              decoration: BoxDecoration(
                border: Border.all(color: widget.card.cardTxtColor, width: 4),
                borderRadius: BorderRadius.circular(16),
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(widget.card.image!, fit: BoxFit.fill),
              ),
            ),
            const SizedBox(width: 7),
          ],

          if (widget.card.enTxt != null) ...[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Text(
                  'De',
                  style: TextStyle(
                    color: widget.card.cardTxtColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),
                Text(
                  'En',
                  style: TextStyle(
                    color: widget.card.cardTxtColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 4),
              ],
            ),
            SizedBox(width: 6),
          ],

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.card.deTxt,
                style: TextStyle(
                  color: widget.card.cardTxtColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),

              if (widget.card.enTxt != null &&
                  widget.card.enTxt!.trim().isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),

                  child: Text(
                    widget.card.enTxt!,
                    style: TextStyle(
                      color: widget.card.cardTxtColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ],
          ),

          const Spacer(),

          IconButton(
            icon: Icon(
              Icons.play_arrow,
              size: 30,
              color: widget.card.cardTxtColor,
            ),
            onPressed: () => _playSound(widget.card.audio),
          ),
        ],
      ),
    );
  }
}
