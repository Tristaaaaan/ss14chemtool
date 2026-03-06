class Reagent {
  final String name;
  final String description;

  const Reagent({required this.name, required this.description});
}

class Elements {
  static const aluminium = Reagent(
    name: "aluminium",
    description: "A silver, soft, non-magnetic, and ductile metal.",
  );

  static const ash = Reagent(
    name: "ash",
    description: "A light grey powdery residue",
  );

  static const carbon = Reagent(
    name: "carbon",
    description: "A black, crystalline solid.",
  );

  static const charcoal = Reagent(
    name: "charcoal",
    description: "A black, porous solid",
  );

  static const chlorine = Reagent(
    name: "chlorine",
    description: "A yellow-green gas which is toxic to humans.",
  );

  static const copper = Reagent(
    name: "copper",
    description:
        "A soft, malleable, and ductile metal with very high thermal and electrical conductivity.",
  );

  static const fluorine = Reagent(
    name: "fluorine",
    description: "A highly toxic pale yellow gas. Extremely reactive.",
  );

  static const gold = Reagent(
    name: "gold",
    description:
        "Gold is a dense, soft, shiny metal and the most malleable and ductile metal known.",
  );

  static const hydrogen = Reagent(
    name: "hydrogen",
    description: "A light, flammable gas.",
  );

  static const iodine = Reagent(
    name: "iodine",
    description:
        "Commonly added to table salt as a nutrient. On its own it tastes far less pleasing.",
  );

  static const iron = Reagent(
    name: "iron",
    description:
        "A silvery-grey metal which forms iron oxides (rust) with contact with air. Commonly alloyed with other elements to create alloys such as steel.",
  );

  static const lithium = Reagent(
    name: "lithium",
    description:
        "A soft, silvery-white alkali metal. It's highly reactive, and ignites if it makes contact with water.",
  );

  static const mercury = Reagent(
    name: "mercury",
    description:
        "A silver metal which is liquid at room temperature. It's highly toxic to humans.",
  );

  static const potassium = Reagent(
    name: "potassium",
    description: "A soft, shiny grey metal. Even more reactive than lithium.",
  );

  static const phosphorus = Reagent(
    name: "phosphorus",
    description: "A reactive metal used in pyrotechnics and weapons.",
  );

  static const radium = Reagent(
    name: "radium",
    description:
        "A radioactive metal, silvery-white in its pure form. It glows due to its radioactivity and is highly toxic.",
  );

  static const silicon = Reagent(
    name: "silicon",
    description: "A hard and brittle crystalline solid with a blue-grey color.",
  );

  static const silver = Reagent(
    name: "silver",
    description:
        "A soft, white, lustrous transition metal, it has the highest electrical conductivity of any element and the highest thermal conductivity of any metal.",
  );

  static const sulfur = Reagent(
    name: "sulfur",
    description: "A yellow, crystalline solid.",
  );

  static const sodium = Reagent(
    name: "sodium",
    description:
        "A silvery-white alkali metal. Highly reactive in its pure form.",
  );

  static const uranium = Reagent(
    name: "uranium",
    description:
        "A grey metallic chemical element in the actinide series, weakly radioactive.",
  );

  static const zinc = Reagent(
    name: "zinc",
    description:
        "A silvery, brittle metal, often used in batteries to carry charge.",
  );

  // Optional: list all elements for iteration
  static const List<Reagent> all = [
    aluminium,
    ash,
    carbon,
    charcoal,
    chlorine,
    copper,
    fluorine,
    gold,
    hydrogen,
    iodine,
    iron,
    lithium,
    mercury,
    potassium,
    phosphorus,
    radium,
    silicon,
    silver,
    sulfur,
    sodium,
    uranium,
    zinc,
  ];
}
