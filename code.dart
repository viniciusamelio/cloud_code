Future<String> getPokemon() async {
  final pokemonList = [
    "ditto",
    "pikachu",
    "bulbasaur",
    "charmander",
    "psyduck",
    "mew",
    "tepig",
    "groudon",
    "moltres",
  ];
  final index = Random().nextInt(8);
  final result = await Dio()
      .get("https://pokeapi.co/api/v2/pokemon/${pokemonList[index]}");
  final data = result.data;
  return "${data['name']} - ${data['id']}";
}
