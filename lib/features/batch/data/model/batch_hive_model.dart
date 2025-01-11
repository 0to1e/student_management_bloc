import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:softwarica_student_management_bloc/app/constants/hive_table_constant.dart';
import 'package:softwarica_student_management_bloc/features/batch/domain/entity/batch_entity.dart';
import 'package:uuid/uuid.dart';

part 'batch_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.batchTableId)
class BatchHiveModel extends Equatable {
  @HiveField(0)
  final String? batchId;
  @HiveField(1)
  final String batchName;

  BatchHiveModel({
    String? batchId,
    required this.batchName,
  }) : batchId = batchId ?? Uuid().v4();

  //initial constructor
  const BatchHiveModel.initial()
      : batchId = "",
        batchName = "";

  factory BatchHiveModel.fromEntity(BatchEntity batchEntity) {
    return BatchHiveModel(
      batchId: batchEntity.batchId,
      batchName: batchEntity.batchName,
    );
  }

  BatchEntity toEntity() {
    return BatchEntity(
      batchId: batchId,
      batchName: batchName,
    );
  }

  @override
  List<Object?> get props => [batchId, batchName];
}
