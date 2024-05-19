import '../database.dart';

class CargosTable extends SupabaseTable<CargosRow> {
  @override
  String get tableName => 'cargos';

  @override
  CargosRow createRow(Map<String, dynamic> data) => CargosRow(data);
}

class CargosRow extends SupabaseDataRow {
  CargosRow(super.data);

  @override
  SupabaseTable get table => CargosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get subordinadoCargosId => getField<int>('subordinado_cargos_id');
  set subordinadoCargosId(int? value) =>
      setField<int>('subordinado_cargos_id', value);

  int get nivelHierarquico => getField<int>('nivel_hierarquico')!;
  set nivelHierarquico(int value) => setField<int>('nivel_hierarquico', value);

  int? get idCargo => getField<int>('id_cargo');
  set idCargo(int? value) => setField<int>('id_cargo', value);
}
