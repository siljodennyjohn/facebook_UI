import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection2 extends StatelessWidget {
  const SuggestionSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Container(
            child: ListTile(
              title: Text("People may you know"),
              trailing: Icon(Icons.more_horiz),
            ),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  suggestImage: asifAliSuggest,
                  suggestName: "Asif Ali",
                  verified: true,
                ),
                SuggestionCard(
                  suggestImage: deepikaPadukoneSuggest,
                  suggestName: "Deepika Padukone",
                  verified: true,
                ),
                SuggestionCard(
                  suggestImage: mukeshAmbaniSuggest,
                  suggestName: "Mukesh Ambani",
                ),
                SuggestionCard(
                  suggestImage: nayantaraSuggest,
                  suggestName: "Nayantara",
                  verified: true,
                ),
                SuggestionCard(
                  suggestImage: nivinPaulySuggest,
                  suggestName: "Nivin Pauly",
                ),
                SuggestionCard(
                  suggestImage: ranbirKapoorSuggest,
                  suggestName: "Ranbir Kapoor",
                  verified: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


