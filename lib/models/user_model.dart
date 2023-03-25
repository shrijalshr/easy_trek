
class UserModel {
  UserModel({
   this.id,
   this.email,
   this.name,
   this.image,
   this.bio,
  });

  final String? image;
  final String? name;
  final String? bio;
  final String? email;
  final String? id;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id:json['id'],
      email:json['email'],
      name:json['name'],
      image:json['image'],
      bio:json['bio'],
    );

    Map<String, dynamic> toJson() => {
      "id":id,
      "email":email,
      "name":name,
      "image":image,
      "bio":bio,
     };
}

