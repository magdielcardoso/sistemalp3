import '../database.dart';

class MetasAgentesTable extends SupabaseTable<MetasAgentesRow> {
  @override
  String get tableName => 'metas_agentes';

  @override
  MetasAgentesRow createRow(Map<String, dynamic> data) => MetasAgentesRow(data);
}

class MetasAgentesRow extends SupabaseDataRow {
  MetasAgentesRow(super.data);

  @override
  SupabaseTable get table => MetasAgentesTable();

  int get agenteIdMeta => getField<int>('agente_id_meta')!;
  set agenteIdMeta(int value) => setField<int>('agente_id_meta', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeAgente => getField<String>('nome_agente');
  set nomeAgente(String? value) => setField<String>('nome_agente', value);

  double? get metaMensal => getField<double>('meta_mensal');
  set metaMensal(double? value) => setField<double>('meta_mensal', value);

  double? get producaoAtual => getField<double>('producao_atual');
  set producaoAtual(double? value) => setField<double>('producao_atual', value);

  double? get progressoMeta => getField<double>('progresso_meta');
  set progressoMeta(double? value) => setField<double>('progresso_meta', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);
}
