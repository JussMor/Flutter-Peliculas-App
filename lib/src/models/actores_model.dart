class Cast {

  List<Actor> actores = [];


  Cast.fromJsonList( List<dynamic>? jsonList  ){

    if ( jsonList == null ) return;

    for (var item in jsonList) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    }
  }

}




class Actor {
  int? castId;
  String? character;
  String? creditId;
  int? gender;
  int? id;
  late String name;
  int? order;
  String? profilePath;

  Actor({
    required this.castId,
    required this.character,
    required this.creditId,
    required this.gender,
    required this.id,
    required this.name,
    required this.order,
    required this.profilePath,
  });

  Actor.fromJsonMap( Map<String, dynamic> json ) {

    castId      = json['cast_id'];
    character   = json['character'];
    creditId    = json['credit_id'];
    gender      = json['gender'];
    id          = json['id'];
    name        = json['name'];
    order       = json['order'];
    profilePath = json['profile_path'];

  }

   getFoto() {

    if ( profilePath == null ) {
      return 'http://forum.spaceengine.org/styles/se/theme/images/no_avatar.jpg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }

  }

}
