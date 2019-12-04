import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_music_app/module/home/models/trending_albums.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TrendingCarousel extends StatefulWidget {
  const TrendingCarousel({this.albumList});
  final List<Trending> albumList;

  @override
  State<StatefulWidget> createState() {
    return _TrendingCarouselState();
  }
}

class _TrendingCarouselState extends State<TrendingCarousel> {
  @override
  Widget build(BuildContext context) {
    return _buildCarouselWith(widget.albumList);
  }

  Widget _buildCarouselWith(List<Trending> albums) {
    return Container(
      height: 150.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: albums.length,
          itemBuilder: (BuildContext context, int index) {
            Trending trending = albums[index];
            return Container(
              margin: const EdgeInsets.all(8.0),
              width: 120.0,
              height: 150.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey[500],
                            blurRadius: 10.0,
                            offset: const Offset(2.0, 2.90))
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: FadeInImage(
                        placeholder:
                            new AssetImage('assets/images/profile.jpg'),
                        image: CachedNetworkImageProvider(
                            'https://images-na.ssl-images-amazon.com/images/I/51qmhXWZBxL.jpg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        fadeInDuration: new Duration(milliseconds: 200),
                        fadeInCurve: Curves.linear,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 50,
                      width: 120,
                      child: _buildTitleView(trending),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget _buildTitleView(Trending trending) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            trending.strAlbum,
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            'Artist: ' + trending.strArtist,
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
