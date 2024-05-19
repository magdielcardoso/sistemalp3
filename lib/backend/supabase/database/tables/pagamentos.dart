import '../database.dart';

class PagamentosTable extends SupabaseTable<PagamentosRow> {
  @override
  String get tableName => 'pagamentos';

  @override
  PagamentosRow createRow(Map<String, dynamic> data) => PagamentosRow(data);
}

class PagamentosRow extends SupabaseDataRow {
  PagamentosRow(super.data);

  @override
  SupabaseTable get table => PagamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get remuneracaoId => getField<int>('remuneracao_id');
  set remuneracaoId(int? value) => setField<int>('remuneracao_id', value);

  String? get usuariosKeyJ => getField<String>('usuarios_key_J');
  set usuariosKeyJ(String? value) => setField<String>('usuarios_key_J', value);

  int get usuariosId => getField<int>('usuarios_id')!;
  set usuariosId(int value) => setField<int>('usuarios_id', value);

  int? get producoesCodigosConveniosGrupo =>
      getField<int>('producoes_codigos_convenios_grupo');
  set producoesCodigosConveniosGrupo(int? value) =>
      setField<int>('producoes_codigos_convenios_grupo', value);

  int? get producoesCodigosProdutosGrupo =>
      getField<int>('producoes_codigos_produtos_grupo');
  set producoesCodigosProdutosGrupo(int? value) =>
      setField<int>('producoes_codigos_produtos_grupo', value);

  int get equipesId => getField<int>('equipes_id')!;
  set equipesId(int value) => setField<int>('equipes_id', value);

  int? get calendarioPagamentosId => getField<int>('calendario_pagamentos_id');
  set calendarioPagamentosId(int? value) =>
      setField<int>('calendario_pagamentos_id', value);

  int get cargosId => getField<int>('cargos_id')!;
  set cargosId(int value) => setField<int>('cargos_id', value);

  int get estadosId => getField<int>('estados_id')!;
  set estadosId(int value) => setField<int>('estados_id', value);

  int? get producaoNumeroProposta => getField<int>('producao_numero_proposta');
  set producaoNumeroProposta(int? value) =>
      setField<int>('producao_numero_proposta', value);

  String? get remuneracao => getField<String>('remuneracao');
  set remuneracao(String? value) => setField<String>('remuneracao', value);

  String? get pagamento => getField<String>('pagamento');
  set pagamento(String? value) => setField<String>('pagamento', value);

  int? get producoesHistoricosId => getField<int>('producoes_historicos_id');
  set producoesHistoricosId(int? value) =>
      setField<int>('producoes_historicos_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
