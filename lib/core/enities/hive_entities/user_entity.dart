import 'package:hive_flutter/hive_flutter.dart';
part 'user_entity.g.dart';

@HiveType(typeId: 0)
class UserHive {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? photo;
  @HiveField(3)
  String? emailAddress;

  UserHive({
    this.id,
    this.displayName,
    this.emailAddress,
    this.photo,
  });
}
