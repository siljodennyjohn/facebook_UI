import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection1 extends StatelessWidget {
  const SuggestionSection1({super.key});

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
                  suggestImage: strellSuggest,
                  suggestName: "Strell Malayalam",
                  verified: true,
                ),
                SuggestionCard(
                  suggestImage: nazriyaSuggest,
                  suggestName: "Nazriya Fahad",
                  verified: true,
                ),
                SuggestionCard(
                  suggestImage: royaldriveSuggest,
                  suggestName: "Royal Drive",
                ),
                SuggestionCard(
                  suggestImage: sujithSuggest,
                  suggestName: "Tech Travel Eat",
                  verified: true,
                ),
                SuggestionCard(
                  suggestImage: poornimaSuggest,
                  suggestName: "Poornima Indrajith",
                ),
                SuggestionCard(
                  suggestImage: vidyasagarSuggest,
                  suggestName: "Vidyasagar",
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
