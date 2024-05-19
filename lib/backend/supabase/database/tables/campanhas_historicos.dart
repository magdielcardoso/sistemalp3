import '../database.dart';

class CampanhasHistoricosTable extends SupabaseTable<CampanhasHistoricosRow> {
  @override
  String get tableName => 'campanhas_historicos';

  @override
  CampanhasHistoricosRow createRow(Map<String, dynamic> data) =>
      CampanhasHistoricosRow(data);
}

class CampanhasHistoricosRow extends SupabaseDataRow {
  CampanhasHistoricosRow(super.data);

  @override
  SupabaseTable get table => CampanhasHistoricosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
