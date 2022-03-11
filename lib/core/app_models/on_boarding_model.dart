class OnBoardingModel {
  late String _img;
  late String _title;
  late String _subtitle;

  OnBoardingModel(String image, String title, String subtitle) {
    _img = image;
    _title = title;
    _subtitle = subtitle;
  }


  String get img => _img;

  String get title => _title;

  String get subtitle => _subtitle;
}