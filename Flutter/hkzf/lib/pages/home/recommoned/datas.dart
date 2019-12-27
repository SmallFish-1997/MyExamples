// 定义
class HomeRecommonedData {
  final String title;
  final String subTitle;
  final String imageUri;
  final String navigatorUrl;

  const HomeRecommonedData(this.title, this.subTitle, this.imageUri, this.navigatorUrl);
  
}

// 默认recommoned列表
const List<HomeRecommonedData> defaultRecommonedList = [
  const HomeRecommonedData(
      '家住回龙观','归属的感觉', 'static/images/home_index_recommend_1.png', 'login'),
  const HomeRecommonedData(
      '宜居四五环', '大都市生活','static/images/home_index_recommend_2.png', 'login'),
  const HomeRecommonedData(
      '喧嚣三里屯', '繁华的背后','static/images/home_index_recommend_3.png', 'login'),
  const HomeRecommonedData(
      '比邻十号线','地铁心连心', 'static/images/home_index_recommend_4.png', 'login'),
];