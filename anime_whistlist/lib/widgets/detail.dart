import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final detailAnime;
  DetailWidget(this.detailAnime);

  @override
  Widget build(BuildContext context) {
    double bintang = double.parse(detailAnime.ratingMyAnimeList.toString()) / 2;
    final List<int> bintang2 = [];
    for (int i = 0; i < bintang; i++) {
      bintang2.add(i);
    }
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 10.0),
        color: Colors.white,
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20.0,
                      ),
                    ),
                  ),
                  width: 120,
                  height: 200,
                  child: CachedNetworkImage(
                    imageUrl: detailAnime.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        '${detailAnime.title}',
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${detailAnime.pengarang}',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: bintang2.map((e) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Text(
              'Sinopsis',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              detailAnime.sinopsis,
            ),
          ],
        ),
      ),
    );
  }
}
