import 'package:facebook/widgets/verifiedIcon.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String suggestImage;
  final String suggestName;
  final bool verified;
  SuggestionCard({
    required this.suggestImage,
    required this.suggestName,
    this.verified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: 230,
      margin: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 12,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Stack(
        children: [
          suggestionImage(suggestImage),
          suggestionDetails(suggestName, verified),
        ],
      ),
    );
  }
}

Widget suggestionImage(String suggestImage) {
  return Positioned(
    left: 0,
    right: 0,
    top: 0,
    child: Container(
      height: 230,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          suggestImage,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget suggestionDetails(String suggestName, dynamic verified) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    height: 80,
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      child: Container(
        height: 90,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 26,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // ignore: unnecessary_null_comparison
                    suggestName == null ? "" : suggestName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verified ? VerfiedIcon() : SizedBox()
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Add Friend"),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Remove"),
                    style: ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.blue),
                      side: WidgetStatePropertyAll(
                        BorderSide(
                          width: 1,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
