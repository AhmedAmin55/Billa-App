class FoodModel{
  String mealImage;
  String MealName;
  double mealPrice;
  String mealDescription;
  bool favorite;
  FoodModel(
  {
    required this.mealImage,
    required this.MealName,
    required this.mealPrice,
    required this.mealDescription,
    this.favorite = false,
  }
  );
}
