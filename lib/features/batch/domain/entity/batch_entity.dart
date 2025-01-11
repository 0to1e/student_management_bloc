import 'package:equatable/equatable.dart';

class BatchEntity extends Equatable {
  final String? batchId;
  final String batchName;

  const BatchEntity({
    required this.batchName,
    this.batchId,
  });

  @override
  List<Object?> get props => [batchId, batchName];
}
