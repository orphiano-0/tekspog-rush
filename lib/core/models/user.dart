class User {
  final int userId;
  final int userRole;
  final String username;
  final String email;
  final double balance;
  final List<int> collectionId;
  final String phoneNumber;
  final String password;
  final DateTime createdAt;

  User({
    required this.userId,
    required this.userRole,
    required this.username,
    required this.email,
    required this.balance,
    required this.collectionId,
    required this.phoneNumber,
    required this.password,
    required this.createdAt,
  });
}
