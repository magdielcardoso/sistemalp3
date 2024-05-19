// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassRegiaoStruct extends BaseStruct {
  ClassRegiaoStruct({
    String? regiao,
    double? totalFinanciadoLiquido,
  })  : _regiao = regiao,
        _totalFinanciadoLiquido = totalFinanciadoLiquido;

  // "regiao" field.
  String? _regiao;
  String get regiao => _regiao ?? '';
  set regiao(String? val) => _regiao = val;
  bool hasRegiao() => _regiao != null;

  // "totalFinanciadoLiquido" field.
  double? _totalFinanciadoLiquido;
  double get totalFinanciadoLiquido => _totalFinanciadoLiquido ?? 0.0;
  set totalFinanciadoLiquido(double? val) => _totalFinanciadoLiquido = val;
  void incrementTotalFinanciadoLiquido(double amount) =>
      _totalFinanciadoLiquido = totalFinanciadoLiquido + amount;
  bool hasTotalFinanciadoLiquido() => _totalFinanciadoLiquido != null;

  static ClassRegiaoStruct fromMap(Map<String, dynamic> data) =>
      ClassRegiaoStruct(
        regiao: data['regiao'] as String?,
        totalFinanciadoLiquido:
            castToType<double>(data['totalFinanciadoLiquido']),
      );

  static ClassRegiaoStruct? maybeFromMap(dynamic data) => data is Map
      ? ClassRegiaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'regiao': _regiao,
        'totalFinanciadoLiquido': _totalFinanciadoLiquido,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'regiao': serializeParam(
          _regiao,
          ParamType.String,
        ),
        'totalFinanciadoLiquido': serializeParam(
          _totalFinanciadoLiquido,
          ParamType.double,
        ),
      }.withoutNulls;

  static ClassRegiaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClassRegiaoStruct(
        regiao: deserializeParam(
          data['regiao'],
          ParamType.String,
          false,
        ),
        totalFinanciadoLiquido: deserializeParam(
          data['totalFinanciadoLiquido'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ClassRegiaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClassRegiaoStruct &&
        regiao == other.regiao &&
        totalFinanciadoLiquido == other.totalFinanciadoLiquido;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([regiao, totalFinanciadoLiquido]);
}

ClassRegiaoStruct createClassRegiaoStruct({
  String? regiao,
  double? totalFinanciadoLiquido,
}) =>
    ClassRegiaoStruct(
      regiao: regiao,
      totalFinanciadoLiquido: totalFinanciadoLiquido,
    );
