import '../database.dart';

class MetaBbTable extends SupabaseTable<MetaBbRow> {
  @override
  String get tableName => 'meta_bb';

  @override
  MetaBbRow createRow(Map<String, dynamic> data) => MetaBbRow(data);
}

class MetaBbRow extends SupabaseDataRow {
  MetaBbRow(super.data);

  @override
  SupabaseTable get table => MetaBbTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get agenciaId => getField<int>('agencia_id');
  set agenciaId(int? value) => setField<int>('agencia_id', value);

  String? get valor => getField<String>('valor');
  set valor(String? value) => setField<String>('valor', value);

  String? get deletado => getField<String>('deletado');
  set deletado(String? value) => setField<String>('deletado', value);

  int? get calendarioPagamentosId => getField<int>('calendario_pagamentos_id');
  set calendarioPagamentosId(int? value) =>
      setField<int>('calendario_pagamentos_id', value);

  String? get cadastradoPor => getField<String>('cadastrado_por');
  set cadastradoPor(String? value) => setField<String>('cadastrado_por', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get alteradoPor => getField<String>('alterado_por');
  set alteradoPor(String? value) => setField<String>('alterado_por', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
