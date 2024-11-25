const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';


final String xAndO = 'x-and-o'.svg;
final String oOutlined = 'o-outlined'.svg;
final String oFilled = 'o-filled'.svg;
final String xOutlined = 'x-outlined'.svg;
final String xFilled = 'x-filled'.svg;
final String restartIcon = 'restartIcon'.svg;


// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
