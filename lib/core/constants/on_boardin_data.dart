import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/models/on_boarding_model.dart';

class OnBoardingData {
  static final List<OnBoardingModel> _data =[
    OnBoardingModel(AppIllustrations.illustration1, 'title', 'subtitle'),
    OnBoardingModel(AppIllustrations.illustration2, 'title', 'subtitle'),
    OnBoardingModel(AppIllustrations.illustration3, 'title', 'subtitle'),
  ];

  static List<OnBoardingModel> get list => _data;
}