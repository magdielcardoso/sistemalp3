import '../database.dart';

class CalendarioPagamentosTable extends SupabaseTable<CalendarioPagamentosRow> {
  @override
  String get tableName => 'calendario_pagamentos';

  @override
  CalendarioPagamentosRow createRow(Map<String, dynamic> data) =>
      CalendarioPagamentosRow(data);
}

class CalendarioPagamentosRow extends SupabaseDataRow {
  CalendarioPagamentosRow(super.data);

  @override
  SupabaseTable get table => CalendarioPagamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get dataInicial => getField<String>('data_inicial');
  set dataInicial(String? value) => setField<String>('data_inicial', value);

  String? get dataFinal => getField<String>('data_final');
  set dataFinal(String? value) => setField<String>('data_final', value);

  String? get deletado => getField<String>('deletado');
  set deletado(String? value) => setField<String>('deletado', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
