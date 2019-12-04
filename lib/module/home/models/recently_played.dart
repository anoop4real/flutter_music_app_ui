import 'package:json_annotation/json_annotation.dart';
part 'recently_played.g.dart';

@JsonSerializable()
class PlaylistCollection {

  // Constructors
  PlaylistCollection({this.playlists});
  factory PlaylistCollection.fromJson(Map<String, dynamic> json) => _$PlaylistCollectionFromJson(json) ;

  List<Playlists> playlists;
  Map<String, dynamic> toJson() => _$PlaylistCollectionToJson(this);
}

@JsonSerializable()
class Playlists {
  Playlists(
      {this.idPlaylist,
        this.strPlaylist,
        this.strDescription,
        this.strSort,
        this.strType,
        this.strImage,
        this.strPublic,
        this.strFeatured,
        this.strUser,
        this.dateCreated});

  factory Playlists.fromJson(Map<String, dynamic> json) => _$PlaylistsFromJson(json);

  String idPlaylist;
  String strPlaylist;
  String strDescription;
  String strSort;
  String strType;
  String strImage;
  String strPublic;
  String strFeatured;
  String strUser;
  String dateCreated;



  Map<String, dynamic> toJson() => _$PlaylistsToJson(this);
}

