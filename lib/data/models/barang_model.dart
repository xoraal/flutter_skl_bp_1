class BarangModel {
  final int id;
  final String name;
  final String price;
  final int quantity;
  final int userId;
  final String createdAt;
  final String updatedAt;

  BarangModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BarangModel.fromJson(Map<String, dynamic> json) => BarangModel(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        quantity: json['quantity'],
        userId: json['user_id'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'quantity': quantity,
        'user_id': userId,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
