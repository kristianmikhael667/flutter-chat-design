import 'package:chaty/thema.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String times;
  final bool unread;

  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.times,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleStyle.copyWith(color: blackColor)
                    : subtitleStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            times,
            style: subtitleStyle,
          )
        ],
      ),
    );
  }
}
