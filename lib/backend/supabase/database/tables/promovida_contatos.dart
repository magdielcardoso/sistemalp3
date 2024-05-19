import '../database.dart';

class PromovidaContatosTable extends SupabaseTable<PromovidaContatosRow> {
  @override
  String get tableName => 'promovida_contatos';

  @override
  PromovidaContatosRow createRow(Map<String, dynamic> data) =>
      PromovidaContatosRow(data);
}

class PromovidaContatosRow extends SupabaseDataRow {
  PromovidaContatosRow(super.data);

  @override
  SupabaseTable get table => PromovidaContatosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get promovidaId => getField<int>('promovida_id');
  set promovidaId(int? value) => setField<int>('promovida_id', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  int? get codigo => getField<int>('codigo');
  set codigo(int? value) => setField<int>('codigo', value);

  int? get subcodigo => getField<int>('subcodigo');
  set subcodigo(int? value) => setField<int>('subcodigo', value);

  String? get infoAdicional => getField<String>('info_adicional');
  set infoAdicional(String? value) => setField<String>('info_adicional', value);
}
