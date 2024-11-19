class PostModelApi {
  final String idTeam;
  final String strTeam;
  final String strLocation;
  final String strBadge;
  bool isLiked;


  PostModelApi({required this.idTeam, required this.strTeam, required this.strLocation, required this.strBadge,this.isLiked = false});

Map<String, dynamic> toMap() {
    return {
      'idTeam': idTeam,
      'strTeam': strTeam,
      'strLocation': strLocation,
      'strBadge' : strBadge,
      'isLiked': isLiked ? 1 : 0,
    };
  }

  factory PostModelApi.fromMap(Map<String, dynamic> map) {
    return PostModelApi(
      idTeam: map['idTeam'],
      strTeam: map['strTeam'],
      strLocation: map['strLocation'],
      strBadge: map['strBadge'],
      isLiked: map['isLiked'] == 1,
    );
  }

  factory PostModelApi.fromJson(Map<String, dynamic> json) {
    return PostModelApi(
      idTeam:json['idTeam'],
      strTeam: json['strTeam'],
      strLocation: json['strLocation'],
      strBadge: json['strBadge'],
    );
  }
}