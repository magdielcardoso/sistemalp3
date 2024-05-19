import '../database.dart';

class ProducoesHistoricosTable extends SupabaseTable<ProducoesHistoricosRow> {
  @override
  String get tableName => 'producoes_historicos';

  @override
  ProducoesHistoricosRow createRow(Map<String, dynamic> data) =>
      ProducoesHistoricosRow(data);
}

class ProducoesHistoricosRow extends SupabaseDataRow {
  ProducoesHistoricosRow(super.data);

  @override
  SupabaseTable get table => ProducoesHistoricosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
