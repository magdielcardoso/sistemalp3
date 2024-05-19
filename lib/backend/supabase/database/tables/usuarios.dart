import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get keyJ => getField<String>('key_J');
  set keyJ(String? value) => setField<String>('key_J', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  int? get equipesId1 => getField<int>('equipes_id_1');
  set equipesId1(int? value) => setField<int>('equipes_id_1', value);

  int? get equipesId2 => getField<int>('equipes_id_2');
  set equipesId2(int? value) => setField<int>('equipes_id_2', value);

  int? get equipesId3 => getField<int>('equipes_id_3');
  set equipesId3(int? value) => setField<int>('equipes_id_3', value);

  int? get equipesId4 => getField<int>('equipes_id_4');
  set equipesId4(int? value) => setField<int>('equipes_id_4', value);

  int? get cargosId => getField<int>('cargos_id');
  set cargosId(int? value) => setField<int>('cargos_id', value);

  double? get meta => getField<double>('meta');
  set meta(double? value) => setField<double>('meta', value);

  int? get estadosId => getField<int>('estados_id');
  set estadosId(int? value) => setField<int>('estados_id', value);

  int? get agenciasId => getField<int>('agencias_id');
  set agenciasId(int? value) => setField<int>('agencias_id', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get deletado => getField<String>('deletado');
  set deletado(String? value) => setField<String>('deletado', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get fotoPath => getField<String>('foto_path');
  set fotoPath(String? value) => setField<String>('foto_path', value);

  int? get idGerente => getField<int>('id_gerente');
  set idGerente(int? value) => setField<int>('id_gerente', value);

  String? get nomeGerente => getField<String>('nome_gerente');
  set nomeGerente(String? value) => setField<String>('nome_gerente', value);
}
