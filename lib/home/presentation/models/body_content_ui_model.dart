class BodyContentUiModel {
  const BodyContentUiModel({
    required this.difficultyValue,
    required this.description,
    required this.imagePath,
    this.isDarkScreen = false,
  });

  final String imagePath;
  final bool isDarkScreen;
  final String description;
  final double difficultyValue;
}
