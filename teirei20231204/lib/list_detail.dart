import 'package:flutter/material.dart';

class ListDetail extends StatelessWidget {
  const ListDetail({
    Key? key,
    required this.userName,
    required this.userId,
    required this.text,
    this.networkImage,
  }) : super(key: key);

  final String userName;
  final String userId;
  final String text;
  final ImageProvider<Object>? networkImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.wikiwiki.jp/to/w/animegameex3/%E3%82%B8%E3%83%BC%E3%82%AF%E3%83%BB%E3%82%A4%E3%82%A7%E3%83%BC%E3%82%AC%E3%83%BC/::ref/%E3%82%B8%E3%83%BC%E3%82%AF.webp?rev=8078d72cf196fe8b4d36e9180c97c980&t=20231004215622'),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName),
                  Text(userId),
                  const SizedBox(height: 8),
                  Text(text),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,なんでか適用されないんでSizedBox挟んでます
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chat_bubble_outline),
                      ),
                      const SizedBox(width: 40),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.cached),
                      ),
                      const SizedBox(width: 40),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.star_border),
                      ),
                      const SizedBox(width: 40),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.download),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            height: 5,
            thickness: 0.5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
