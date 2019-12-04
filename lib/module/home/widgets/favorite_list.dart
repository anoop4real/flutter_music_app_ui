

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/module/home/models/most_popular_albums.dart';

class FavoriteList extends StatefulWidget{
  FavoriteList({this.loved});
  List<Loved> loved;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteListState();
  }

}

class _FavoriteListState extends State<FavoriteList>{
  @override
  Widget build(BuildContext context) {
    return _buildFavoriteListWith(widget.loved);
  }

  Widget _buildFavoriteListWith(List<Loved> favoriteList){

    return  Column(
        children: <Widget>[
          Row(children: [
            Text(
              'Favorite Tracks',
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
            height: 250,
            child: ListView.builder(
                itemCount: favoriteList.length,
                itemBuilder: (BuildContext context, int index) {
                  Loved loved = favoriteList[index];
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 60.0,
                    height: 60.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
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
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              loved.strAlbum,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Artist: ' + loved.strArtist,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12),
                            )

                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      );
  }

}