import '../database.dart';

class ProducoesCodigoConveniosTable
    extends SupabaseTable<ProducoesCodigoConveniosRow> {
  @override
  String get tableName => 'producoes_codigo_convenios';

  @override
  ProducoesCodigoConveniosRow createRow(Map<String, dynamic> data) =>
      ProducoesCodigoConveniosRow(data);
}

class ProducoesCodigoConveniosRow extends SupabaseDataRow {
  ProducoesCodigoConveniosRow(super.data);

  @override
  SupabaseTable get table => ProducoesCodigoConveniosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int get codigo => getField<int>('codigo')!;
  set codigo(int value) => setField<int>('codigo', value);

  int get grupo => getField<int>('grupo')!;
  set grupo(int value) => setField<int>('grupo', value);
}
