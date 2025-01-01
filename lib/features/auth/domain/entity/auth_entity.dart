import 'package:equatable/equatable.dart';
import 'package:softwarica_student_management_bloc/features/batch/domain/entity/batch_entity.dart';
import 'package:softwarica_student_management_bloc/features/course/domain/entity/course_entity.dart';

class AuthEntity extends Equatable {
  final String? userId;
  final String fname;
  final String lname;
  final String? image;
  final BatchEntity batch;
  final List<CourseEntity> courses;
  final String username;
  final String password;

  const AuthEntity({
    this.userId,
    required this.fname,
    required this.lname,
    this.image,
    required this.batch,
    required this.courses,
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props =>
      [userId, fname, lname, image, batch, courses, username, password];
}
