
class Category {
  String id;
  String name;


  Category(this.id, this.name);

  Category.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'];
  
  Map<String, dynamic> toJson() => {
    'id': this.id,
    'name': this.name
  };


  //  Category.fromJson(Map<String, dynamic> json) {
  //     categoryName = json["string"];
  //  }

  //  Map<String, dynamic> toJson() {
  //    final Map<String, dynamic> responseData = Map<String, dynamic>();
  //    responseData['categoryName']
  //  }
}