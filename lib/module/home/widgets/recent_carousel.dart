import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/module/home/models/recently_played.dart';

class RecentlyPlayedCarousel extends StatefulWidget {
  const RecentlyPlayedCarousel({this.recentlyPlayed});
  final List<Playlists> recentlyPlayed;

  @override
  State<StatefulWidget> createState() {
    return _RecentlyPlayedCarouselState();
  }
}

class _RecentlyPlayedCarouselState extends State<RecentlyPlayedCarousel> {
  @override
  Widget build(BuildContext context) {
    return _buildCarouselWith(widget.recentlyPlayed);
  }

  Widget _buildCarouselWith(List<Playlists> playlists) {
    return Container(
      height: 220,
      child: Column(
        children: <Widget>[
          Row(children: [
            Text(
              'Recently Played',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 18),
            ),
          ]),
          SizedBox(height: 20,),
          Container(
            height: 80.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: playlists.length,
                itemBuilder: (BuildContext context, int index) {
                  Playlists playlist = playlists[index];
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 60.0,
                    height: 60.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: FadeInImage(
                              placeholder:
                                  new AssetImage('assets/images/profile.jpg'),
                              image: CachedNetworkImageProvider(
                                  'https://images-na.ssl-images-amazon.com/images/I/51vlGuX7%2BFL.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              fadeInDuration: new Duration(milliseconds: 200),
                              fadeInCurve: Curves.linear,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
