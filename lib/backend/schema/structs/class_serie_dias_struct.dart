// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassSerieDiasStruct extends BaseStruct {
  ClassSerieDiasStruct({
    int? dia,
    double? total,
  })  : _dia = dia,
        _total = total;

  // "dia" field.
  int? _dia;
  int get dia => _dia ?? 0;
  set dia(int? val) => _dia = val;
  void incrementDia(int amount) => _dia = dia + amount;
  bool hasDia() => _dia != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;
  void incrementTotal(double amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  static ClassSerieDiasStruct fromMap(Map<String, dynamic> data) =>
      ClassSerieDiasStruct(
        dia: castToType<int>(data['dia']),
        total: castToType<double>(data['total']),
      );

  static ClassSerieDiasStruct? maybeFromMap(dynamic data) => data is Map
      ? ClassSerieDiasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dia': _dia,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dia': serializeParam(
          _dia,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
      }.withoutNulls;

  static ClassSerieDiasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClassSerieDiasStruct(
        dia: deserializeParam(
          data['dia'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ClassSerieDiasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClassSerieDiasStruct &&
        dia == other.dia &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([dia, total]);
}

ClassSerieDiasStruct createClassSerieDiasStruct({
  int? dia,
  double? total,
}) =>
    ClassSerieDiasStruct(
      dia: dia,
      total: total,
    );
