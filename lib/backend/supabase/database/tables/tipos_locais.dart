import '../database.dart';

class TiposLocaisTable extends SupabaseTable<TiposLocaisRow> {
  @override
  String get tableName => 'tipos_locais';

  @override
  TiposLocaisRow createRow(Map<String, dynamic> data) => TiposLocaisRow(data);
}

class TiposLocaisRow extends SupabaseDataRow {
  TiposLocaisRow(super.data);

  @override
  SupabaseTable get table => TiposLocaisTable();

  int get idTipo => getField<int>('id_tipo')!;
  set idTipo(int value) => setField<int>('id_tipo', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);
}
