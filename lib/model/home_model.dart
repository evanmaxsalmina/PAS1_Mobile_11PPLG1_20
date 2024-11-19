class Teams {
  String idTeam;
  String strTeam;
  String strLeague;
  String strLogo;

  Teams(
      {required this.idTeam,
      required this.strTeam,
      required this.strLeague,
      required this.strLogo});

  factory Teams.fromJson(Map<String, dynamic> json) {
    return Teams(
      idTeam: json["idTeam"],
      strTeam: json["strTeam"],
      strLeague: json["strLeague"],
      strLogo: json["strLogo"],
    );
  }
}
