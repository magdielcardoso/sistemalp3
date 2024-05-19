import '../database.dart';

class ComissoesTable extends SupabaseTable<ComissoesRow> {
  @override
  String get tableName => 'comissoes';

  @override
  ComissoesRow createRow(Map<String, dynamic> data) => ComissoesRow(data);
}

class ComissoesRow extends SupabaseDataRow {
  ComissoesRow(super.data);

  @override
  SupabaseTable get table => ComissoesTable();

  int get idComissao => getField<int>('id_comissao')!;
  set idComissao(int value) => setField<int>('id_comissao', value);

  double? get valorFinanciado => getField<double>('valor_financiado');
  set valorFinanciado(double? value) =>
      setField<double>('valor_financiado', value);

  int? get parcelas => getField<int>('parcelas');
  set parcelas(int? value) => setField<int>('parcelas', value);

  double? get taxaJuros => getField<double>('taxa_juros');
  set taxaJuros(double? value) => setField<double>('taxa_juros', value);

  String? get nomeAgente => getField<String>('nome_agente');
  set nomeAgente(String? value) => setField<String>('nome_agente', value);

  int? get idAgente => getField<int>('id_agente');
  set idAgente(int? value) => setField<int>('id_agente', value);

  int? get idCargoAgente => getField<int>('id_cargo_agente');
  set idCargoAgente(int? value) => setField<int>('id_cargo_agente', value);

  String? get nomeAgencia => getField<String>('nome_agencia');
  set nomeAgencia(String? value) => setField<String>('nome_agencia', value);

  int? get agenciaId => getField<int>('agencia_id');
  set agenciaId(int? value) => setField<int>('agencia_id', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idConvenio => getField<int>('id_convenio');
  set idConvenio(int? value) => setField<int>('id_convenio', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  double? get valorComissao => getField<double>('valor_comissao');
  set valorComissao(double? value) => setField<double>('valor_comissao', value);

  int? get grupoProduto => getField<int>('grupo_produto');
  set grupoProduto(int? value) => setField<int>('grupo_produto', value);

  int? get grupoConvenio => getField<int>('grupo_convenio');
  set grupoConvenio(int? value) => setField<int>('grupo_convenio', value);

  int? get idEstadoAgencia => getField<int>('id_estado_agencia');
  set idEstadoAgencia(int? value) => setField<int>('id_estado_agencia', value);

  String? get tipoLocalAgencia => getField<String>('tipo_local_agencia');
  set tipoLocalAgencia(String? value) =>
      setField<String>('tipo_local_agencia', value);

  double? get taxaDeComissao => getField<double>('taxa_de_comissao');
  set taxaDeComissao(double? value) =>
      setField<double>('taxa_de_comissao', value);

  DateTime? get dataMovimento => getField<DateTime>('data_movimento');
  set dataMovimento(DateTime? value) =>
      setField<DateTime>('data_movimento', value);

  double? get valorFinanciadoLiquido =>
      getField<double>('valor_financiado_liquido');
  set valorFinanciadoLiquido(double? value) =>
      setField<double>('valor_financiado_liquido', value);

  int? get codigoProduto => getField<int>('codigo_produto');
  set codigoProduto(int? value) => setField<int>('codigo_produto', value);

  int? get codigoConvenio => getField<int>('codigo_convenio');
  set codigoConvenio(int? value) => setField<int>('codigo_convenio', value);

  String? get dataProposta => getField<String>('data_proposta');
  set dataProposta(String? value) => setField<String>('data_proposta', value);

  int? get numeroProposta => getField<int>('numero_proposta');
  set numeroProposta(int? value) => setField<int>('numero_proposta', value);

  int? get prefixoAgResponsavel => getField<int>('prefixo_ag_responsavel');
  set prefixoAgResponsavel(int? value) =>
      setField<int>('prefixo_ag_responsavel', value);

  DateTime? get createdAtt => getField<DateTime>('created_att');
  set createdAtt(DateTime? value) => setField<DateTime>('created_att', value);

  String? get chaveJ => getField<String>('chave_j');
  set chaveJ(String? value) => setField<String>('chave_j', value);

  String? get nomeCargo => getField<String>('nome_cargo');
  set nomeCargo(String? value) => setField<String>('nome_cargo', value);

  String? get nomeEquipe => getField<String>('nome_equipe');
  set nomeEquipe(String? value) => setField<String>('nome_equipe', value);

  String? get cpfCliente => getField<String>('cpf_cliente');
  set cpfCliente(String? value) => setField<String>('cpf_cliente', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get dia => getField<int>('dia');
  set dia(int? value) => setField<int>('dia', value);

  int? get mes => getField<int>('mes');
  set mes(int? value) => setField<int>('mes', value);

  int? get ano => getField<int>('ano');
  set ano(int? value) => setField<int>('ano', value);

  int? get gerenteId => getField<int>('gerente_id');
  set gerenteId(int? value) => setField<int>('gerente_id', value);

  String? get gerenteNome => getField<String>('gerente_nome');
  set gerenteNome(String? value) => setField<String>('gerente_nome', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get producoesHistoricosId => getField<int>('producoes_historicos_id');
  set producoesHistoricosId(int? value) =>
      setField<int>('producoes_historicos_id', value);
}
