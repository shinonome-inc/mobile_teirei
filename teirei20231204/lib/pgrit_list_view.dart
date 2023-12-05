import 'package:flutter/material.dart';
import 'package:teirei20231204/list_detail.dart';

class PgritListView extends StatelessWidget {
  const PgritListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mastodon'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: ListView(
        children: const [
          ListDetail(
            userName: 'keitaro/薮 慶太郎ð',
            userId: '@Keitaro ・ 44 minutes ago',
            text: 'SQLの最適化とかやってみたい',
          ),
          ListDetail(
            userName: 'yo/小林 陽',
            userId: '@yo ・ 46 minutes ago',
            text: 'たくさんDawn入ったりイベント参加してたり\nしたらこんなにたくさん遊べちゃいました！',
          ),
          ListDetail(
            userName: 'Ryoma / 大谷涼真',
            userId: '@Ryoma ・ 1 hour ago',
            text: 'わかんないやーCNN くわしい人に聞いたほうが\nいい笑'
                '渡してる値がモデルがほしい値と違うって\nのは確定し'
                'てるから、前処理やり直すか最悪は\nモデルの作り直'
                'しじゃない？',
          ),
          ListDetail(
            userName: 'kaito / 荒井海斗',
            userId: '@Kaitooo',
            text: 'こんにちは',
          ),
          ListDetail(
            userName: 'keitaro/薮 慶太郎ð',
            userId: '@Keitaro ・ 44 minutes ago',
            text: 'SQLの最適化とかやってみたい',
          ),
          ListDetail(
            userName: 'yo/小林 陽',
            userId: '@yo ・ 46 minutes ago',
            text: 'たくさんDawn入ったりイベント参加してたり\nしたらこんなにたくさん遊べちゃいました！',
          ),
          ListDetail(
            userName: 'Ryoma / 大谷涼真',
            userId: '@Ryoma ・ 1 hour ago',
            text: 'わかんないやーCNN くわしい人に聞いたほうが\nいい笑'
                '渡してる値がモデルがほしい値と違うって\nのは確定し'
                'てるから、前処理やり直すか最悪は\nモデルの作り直'
                'しじゃない？',
          ),
          ListDetail(
            userName: 'kaito / 荒井海斗',
            userId: '@Kaitooo',
            text: 'こんにちは',
          ),
        ],
      ),
    );
  }
}
