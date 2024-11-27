const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';


final String bgPentagon = 'bg-pentagon'.svg;
final String bgTriangle = 'bg-triangle'.svg;
final String iconClose = 'icon-close'.svg;
final String iconLizard = 'icon-lizard'.svg;
final String iconPaper = 'icon-paper'.svg;
final String iconRock = 'icon-rock'.svg;
final String iconScissors = 'icon-scissors'.svg;
final String iconSpock = 'icon-spock'.svg;
final String rockTile = 'rockTile'.svg;
final String paperTile = 'paperTile'.svg;
final String scissorsTile = 'scissorsTile'.svg;
final String lizardTile = 'lizardTile'.svg;
final String spockTile = 'spockTile'.svg;
final String imageRules = 'image-rules'.svg;
final String imageRulesBonus = 'image-rules-bonus'.svg;
final String logo = 'logo'.svg;
final String logoBonus = 'logo-bonus'.svg;

// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
