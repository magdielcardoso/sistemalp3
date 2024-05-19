import '../database.dart';

class EquipesTable extends SupabaseTable<EquipesRow> {
  @override
  String get tableName => 'equipes';

  @override
  EquipesRow createRow(Map<String, dynamic> data) => EquipesRow(data);
}

class EquipesRow extends SupabaseDataRow {
  EquipesRow(super.data);

  @override
  SupabaseTable get table => EquipesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int get estadosId => getField<int>('estados_id')!;
  set estadosId(int value) => setField<int>('estados_id', value);

  String? get nomeGerente => getField<String>('nome_gerente');
  set nomeGerente(String? value) => setField<String>('nome_gerente', value);

  int? get gerenteId => getField<int>('gerente_id');
  set gerenteId(int? value) => setField<int>('gerente_id', value);
}
