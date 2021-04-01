class HashtagModel {
  final String subCategory;
  final String fewHashtags;
  final String caption;

  HashtagModel({this.subCategory, this.fewHashtags, this.caption});
}

List<HashtagModel> catData = [
  HashtagModel(subCategory: 'funny', fewHashtags: 'Hi there, using hashtags' , caption: 'Here is the list of complete caption which the user will copy and lets see how it goes'),
  HashtagModel(subCategory: 'general', fewHashtags: 'Hi there, using hashtags1' , caption: 'Here is the list of complete caption which the user will copy and lets see how it goes'),
  HashtagModel(subCategory: 'general', fewHashtags: 'Hi there, using hashtags2' , caption: 'Here is the list of complete caption which the user will copy and lets see how it goes'),
  HashtagModel(subCategory: 'general', fewHashtags: 'Hi there, using hashtags3' , caption: 'Here is the list of complete caption which the user will copy and lets see how it goes'),
];
