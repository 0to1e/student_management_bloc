import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:softwarica_student_management_bloc/app/constants/hive_table_constant.dart';
import 'package:softwarica_student_management_bloc/features/batch/data/model/batch_hive_model.dart';

class HiveService {
  Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = '${directory.path}/softwarica-student-management.db';

    Hive.init(path);
    Hive.registerAdapter(BatchHiveModelAdapter());
  }

  // Batch Queries
  Future<void> addBatch(BatchHiveModel batch) async {
    var box = await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
    await box.put(batch.batchId, batch);
  }

  Future<void> deleteBatch(String id) async {
    var box = await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
    await box.delete(id);
  }

  Future<List<BatchHiveModel>> getAllBatches() async {
    var box = await Hive.openBox<BatchHiveModel>(HiveTableConstant.batchBox);
    return box.values.toList()
      ..sort((a, b) => a.batchName.compareTo(b.batchName));
  }

// Course Queries
  Future<void> addCourse() async {}

  Future<void> deleteCourse() async {}

  Future<void> getAllCourses() async {}

// Student Queries
  Future<void> addStudent() async {}

  Future<void> deleteStudent() async {}

  Future<void> getAllStudents() async {}

  Future<void> loginStudent(String username, String password) async {}
}
