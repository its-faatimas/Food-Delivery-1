import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/app_models/on_boarding_model.dart';

class OnBoardingData {
  static final List<OnBoardingModel> _data =[
    OnBoardingModel(AppIllustrations.illustration1, 'All your favorites', 'Order from the best local restaurants with easy, on-demand delivery.'),
    OnBoardingModel(AppIllustrations.illustration2, 'Free delivery offers', 'Free delivery for new customers via Apple Pay and others payment methods.'),
    OnBoardingModel(AppIllustrations.illustration3, 'Choose your food', 'Easily find your type of food craving and you’ll get delivery in wide range.'),
  ];

  static List<OnBoardingModel> get list => _data;
}