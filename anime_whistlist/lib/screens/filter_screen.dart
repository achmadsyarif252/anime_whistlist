import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filterscreen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isSubIndo = false;
  bool isOnGoing = false;
  bool isSU = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Anime'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'Tampilkan Anime Sesuai Selera Anda',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SwitchListTile(
              value: isSubIndo,
              onChanged: (newValue) {
                setState(() {
                  isSubIndo = newValue;
                });
              },
              title: Text('Sub Indonesia'),
              subtitle: Text('Tampilkan Anime dengan Sub Indonesia'),
            ),
            SwitchListTile(
              value: isOnGoing,
              onChanged: (newValue) {
                setState(() {
                  isOnGoing = newValue;
                });
              },
              title: Text('On Going Anime'),
              subtitle: Text('Tampilkan Hanya Anime On Going'),
            ),
            SwitchListTile(
              value: isSU,
              onChanged: (newValue) {
                setState(() {
                  isSU = newValue;
                });
              },
              title: Text('Sub Indonesia'),
              subtitle: Text('Tampilkan Anime dengan Kategori Semua Umur'),
            ),
          ],
        ),
      ),
    );
  }
}
