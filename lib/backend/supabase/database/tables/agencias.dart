import '../database.dart';

class AgenciasTable extends SupabaseTable<AgenciasRow> {
  @override
  String get tableName => 'agencias';

  @override
  AgenciasRow createRow(Map<String, dynamic> data) => AgenciasRow(data);
}

class AgenciasRow extends SupabaseDataRow {
  AgenciasRow(super.data);

  @override
  SupabaseTable get table => AgenciasTable();

  int get idAgencia => getField<int>('id_agencia')!;
  set idAgencia(int value) => setField<int>('id_agencia', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get estadosId => getField<int>('estados_id');
  set estadosId(int? value) => setField<int>('estados_id', value);

  int? get cidadesId => getField<int>('cidades_id');
  set cidadesId(int? value) => setField<int>('cidades_id', value);

  int? get codigoMailing => getField<int>('codigo_mailing');
  set codigoMailing(int? value) => setField<int>('codigo_mailing', value);

  String? get agenciaTipoLocal => getField<String>('agencia_tipo_local');
  set agenciaTipoLocal(String? value) =>
      setField<String>('agencia_tipo_local', value);
}
