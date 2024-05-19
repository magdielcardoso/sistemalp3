import '../database.dart';

class HistoricoClientesTable extends SupabaseTable<HistoricoClientesRow> {
  @override
  String get tableName => 'historico_clientes';

  @override
  HistoricoClientesRow createRow(Map<String, dynamic> data) =>
      HistoricoClientesRow(data);
}

class HistoricoClientesRow extends SupabaseDataRow {
  HistoricoClientesRow(super.data);

  @override
  SupabaseTable get table => HistoricoClientesTable();

  int get idHistorico => getField<int>('id_historico')!;
  set idHistorico(int value) => setField<int>('id_historico', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get agenteId => getField<int>('agente_id');
  set agenteId(int? value) => setField<int>('agente_id', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  int? get codigoConvenio => getField<int>('codigo_convenio');
  set codigoConvenio(int? value) => setField<int>('codigo_convenio', value);

  int? get producaoId => getField<int>('producao_id');
  set producaoId(int? value) => setField<int>('producao_id', value);
}
