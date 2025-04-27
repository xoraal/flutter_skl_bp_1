class MitraModel {
  final int id;
  final String nama;
  final String noTelp;
  final String alamat;
  final int userId;
  final String createdAt;
  final String updatedAt;

  MitraModel({
    required this.id,
    required this.nama,
    required this.noTelp,
    required this.alamat,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MitraModel.fromJson(Map<String, dynamic> json) => MitraModel(
        id: json['id'],
        nama: json['nama'],
        noTelp: json['no_telp'],
        alamat: json['alamat'],
        userId: json['user_id'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nama': nama,
        'no_telp': noTelp,
        'alamat': alamat,
        'user_id': userId,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
