import '../database.dart';

class GruposConveniosTable extends SupabaseTable<GruposConveniosRow> {
  @override
  String get tableName => 'grupos_convenios';

  @override
  GruposConveniosRow createRow(Map<String, dynamic> data) =>
      GruposConveniosRow(data);
}

class GruposConveniosRow extends SupabaseDataRow {
  GruposConveniosRow(super.data);

  @override
  SupabaseTable get table => GruposConveniosTable();

  int get codigoConvenio => getField<int>('codigo_convenio')!;
  set codigoConvenio(int value) => setField<int>('codigo_convenio', value);

  String? get nomeConvenio => getField<String>('nome_convenio');
  set nomeConvenio(String? value) => setField<String>('nome_convenio', value);

  int get codigoGrupo => getField<int>('codigo_grupo')!;
  set codigoGrupo(int value) => setField<int>('codigo_grupo', value);
}
