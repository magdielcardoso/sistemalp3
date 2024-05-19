import '../database.dart';

class NotificacoesTable extends SupabaseTable<NotificacoesRow> {
  @override
  String get tableName => 'notificacoes';

  @override
  NotificacoesRow createRow(Map<String, dynamic> data) => NotificacoesRow(data);
}

class NotificacoesRow extends SupabaseDataRow {
  NotificacoesRow(super.data);

  @override
  SupabaseTable get table => NotificacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get usuariosId => getField<int>('usuarios_id');
  set usuariosId(int? value) => setField<int>('usuarios_id', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get deletado => getField<String>('deletado');
  set deletado(String? value) => setField<String>('deletado', value);

  String? get cadastradoPor => getField<String>('cadastrado_por');
  set cadastradoPor(String? value) => setField<String>('cadastrado_por', value);

  String? get alteradoPor => getField<String>('alterado_por');
  set alteradoPor(String? value) => setField<String>('alterado_por', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get uidUser => getField<String>('uid_user');
  set uidUser(String? value) => setField<String>('uid_user', value);

  int? get lida => getField<int>('lida');
  set lida(int? value) => setField<int>('lida', value);
}
