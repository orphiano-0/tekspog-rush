// import 'package:floor/floor.dart';
// import 'package:tekspogs/core/models/user.dart';

// @Entity(tableName: 'users')
// class UserModel {
//   @PrimaryKey()
//   final int userId;
//   final int userRole;
//   final String username;
//   final String email;
//   final double balance;
//   final List<int> collectionId;
//   final String phoneNumber;
//   final String password;
//   final DateTime createdAt;

//   UserModel({
//     required this.userId,
//     required this.userRole,
//     required this.username,
//     required this.email,
//     required this.balance,
//     required this.collectionId,
//     required this.phoneNumber,
//     required this.password,
//     required this.createdAt,
//   });

//   User toEntity() => User(
//     userId: userId,
//     userRole: userRole,
//     username: username,
//     email: email,
//     balance: balance,
//     collectionId: collectionId,
//     phoneNumber: phoneNumber,
//     password: password,
//     createdAt: createdAt,
//   );
//   factory UserModel.fromEntity(User user) => UserModel(
//     userId: user.userId,
//     userRole: user.userRole,
//     username: user.username,
//     email: user.email,
//     balance: user.balance,
//     collectionId: user.collectionId,
//     phoneNumber: user.phoneNumber,
//     password: user.password,
//     createdAt: user.createdAt,
//   );
// }
