
class Category {
  String id;
  String name;
  String length;
  String imageUrl;


  Category(this.id, this.name, this.length, this.imageUrl);

  Category.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'];
    // imageUrl = json['imageUrl'];
    // length = json['length'];
 


  
  Map<String, dynamic> toJson() => {
    'id': this.id,
    'name': this.name,
    'length': this.length,
    'imageUrl': this.imageUrl
  };


  //  Category.fromJson(Map<String, dynamic> json) {
  //     categoryName = json["string"];
  //  }

  //  Map<String, dynamic> toJson() {
  //    final Map<String, dynamic> responseData = Map<String, dynamic>();
  //    responseData['categoryName']
  //  }
}