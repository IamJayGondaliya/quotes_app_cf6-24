/*
  Model class:
    - The objective (OOP - class) representation of app data (Map) is called model class.
    - What it contains:
      - attributes
      - constructor
      - factory constructor
          - Map to Model
      - Map getter  [optional]
          - Model to Map
*/

// Model Class
class QuoteModel {
  // attributes
  String quote, author, category;

  // constructor
  QuoteModel(this.quote, this.author, this.category);

  // factory constructor
  factory QuoteModel.fromMap({required Map data}) => QuoteModel(
        data['quote'],
        data['author'],
        data['category'],
      );

  // Map getter
  Map<String, dynamic> get toMap => {
        'quote': quote,
        'author': author,
        'category': category,
      };
}
