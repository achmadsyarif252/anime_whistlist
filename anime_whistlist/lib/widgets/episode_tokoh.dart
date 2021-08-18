import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailEpisodeTokoh extends StatelessWidget {
  final detailAnime;

  DetailEpisodeTokoh(this.detailAnime);

  TextStyle title = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    buildColumn(String text, Widget child) {
      return SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: child,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        buildColumn(
          'Tokoh',
          ListView.builder(
            itemBuilder: (ctx, index) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      '${index + 1}). ${detailAnime.tokoh[index]['tokoh']}',
                      style: title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                      ', ${detailAnime.tokoh[index]['aktor']}',
                      style: title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              );
            },
            itemCount: detailAnime.tokoh.length,
          ),
        ),
        buildColumn(
          'Episode',
          ListView.builder(
            itemBuilder: (ctx, index) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      '${detailAnime.episode[index]['episode']}).',
                      style: title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                      detailAnime.episode[index]['judul'],
                      style: title,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
            itemCount: detailAnime.episode.length,
          ),
        ),
      ],
    );
  }
}
