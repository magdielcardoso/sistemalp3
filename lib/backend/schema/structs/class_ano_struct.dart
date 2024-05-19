// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassAnoStruct extends BaseStruct {
  ClassAnoStruct({
    double? total,
    String? ano,
  })  : _total = total,
        _ano = ano;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;
  void incrementTotal(double amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  // "ano" field.
  String? _ano;
  String get ano => _ano ?? '';
  set ano(String? val) => _ano = val;
  bool hasAno() => _ano != null;

  static ClassAnoStruct fromMap(Map<String, dynamic> data) => ClassAnoStruct(
        total: castToType<double>(data['total']),
        ano: data['ano'] as String?,
      );

  static ClassAnoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClassAnoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'ano': _ano,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'ano': serializeParam(
          _ano,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClassAnoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClassAnoStruct(
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        ano: deserializeParam(
          data['ano'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClassAnoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClassAnoStruct && total == other.total && ano == other.ano;
  }

  @override
  int get hashCode => const ListEquality().hash([total, ano]);
}

ClassAnoStruct createClassAnoStruct({
  double? total,
  String? ano,
}) =>
    ClassAnoStruct(
      total: total,
      ano: ano,
    );
