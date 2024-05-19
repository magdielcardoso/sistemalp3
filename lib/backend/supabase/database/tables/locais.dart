import '../database.dart';

class LocaisTable extends SupabaseTable<LocaisRow> {
  @override
  String get tableName => 'locais';

  @override
  LocaisRow createRow(Map<String, dynamic> data) => LocaisRow(data);
}

class LocaisRow extends SupabaseDataRow {
  LocaisRow(super.data);

  @override
  SupabaseTable get table => LocaisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get estadosId => getField<int>('estados_id')!;
  set estadosId(int value) => setField<int>('estados_id', value);

  int? get cidadesId => getField<int>('cidades_id');
  set cidadesId(int? value) => setField<int>('cidades_id', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get tel1 => getField<String>('tel1');
  set tel1(String? value) => setField<String>('tel1', value);

  String? get tel2 => getField<String>('tel2');
  set tel2(String? value) => setField<String>('tel2', value);

  String? get tel3 => getField<String>('tel3');
  set tel3(String? value) => setField<String>('tel3', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  String? get rememberToken => getField<String>('remember_token');
  set rememberToken(String? value) => setField<String>('remember_token', value);
}
