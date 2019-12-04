// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_played.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistCollection _$PlaylistCollectionFromJson(Map<String, dynamic> json) {
  return PlaylistCollection(
    playlists: (json['playlists'] as List)
        ?.map((e) =>
            e == null ? null : Playlists.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlaylistCollectionToJson(PlaylistCollection instance) =>
    <String, dynamic>{
      'playlists': instance.playlists,
    };

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return Playlists(
    idPlaylist: json['idPlaylist'] as String,
    strPlaylist: json['strPlaylist'] as String,
    strDescription: json['strDescription'] as String,
    strSort: json['strSort'] as String,
    strType: json['strType'] as String,
    strImage: json['strImage'] as String,
    strPublic: json['strPublic'] as String,
    strFeatured: json['strFeatured'] as String,
    strUser: json['strUser'] as String,
    dateCreated: json['dateCreated'] as String,
  );
}

Map<String, dynamic> _$PlaylistsToJson(Playlists instance) => <String, dynamic>{
      'idPlaylist': instance.idPlaylist,
      'strPlaylist': instance.strPlaylist,
      'strDescription': instance.strDescription,
      'strSort': instance.strSort,
      'strType': instance.strType,
      'strImage': instance.strImage,
      'strPublic': instance.strPublic,
      'strFeatured': instance.strFeatured,
      'strUser': instance.strUser,
      'dateCreated': instance.dateCreated,
    };
