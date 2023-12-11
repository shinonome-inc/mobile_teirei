import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final Color _backgroundColor = const Color(0xFF253226);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_down),
        ),
        title: const Text('Play Song'),
        centerTitle: true,
        actions: const [
          Text(
            '…',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
        ],
        foregroundColor: Colors.white,
        backgroundColor: _backgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 360.0,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 1.9,
                child: Image.network(
                  'https://m.media-amazon.com/images/I/71OrAg2FBYL._SY200_QL15_.jpg',
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ロード',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      'THE TRABRYU',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.minimize,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 40.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Divider(
              thickness: 4.0,
              color: Color(0x33FFFFFF),
            ),
            const SizedBox(height: 4.0),
            const Row(
              children: [
                Text(
                  '0:00',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Text(
                  '-4:28',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.white,
                    iconSize: 48.0,
                  ),
                ),
                const SizedBox(width: 32.0),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 64.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      color: _backgroundColor,
                      size: 48.0,
                    ),
                  ),
                ),
                const SizedBox(width: 32.0),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.white,
                  iconSize: 48.0,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.speaker_group_outlined,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
