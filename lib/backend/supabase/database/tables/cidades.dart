import '../database.dart';

class CidadesTable extends SupabaseTable<CidadesRow> {
  @override
  String get tableName => 'cidades';

  @override
  CidadesRow createRow(Map<String, dynamic> data) => CidadesRow(data);
}

class CidadesRow extends SupabaseDataRow {
  CidadesRow(super.data);

  @override
  SupabaseTable get table => CidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get idEstado => getField<int>('id_estado');
  set idEstado(int? value) => setField<int>('id_estado', value);
}
