import '../database.dart';

class Producoesv2Table extends SupabaseTable<Producoesv2Row> {
  @override
  String get tableName => 'producoesv2';

  @override
  Producoesv2Row createRow(Map<String, dynamic> data) => Producoesv2Row(data);
}

class Producoesv2Row extends SupabaseDataRow {
  Producoesv2Row(super.data);

  @override
  SupabaseTable get table => Producoesv2Table();

  String? get dataMovimento => getField<String>('Data Movimento');
  set dataMovimento(String? value) => setField<String>('Data Movimento', value);

  String? get chaveJ => getField<String>('ChaveJ');
  set chaveJ(String? value) => setField<String>('ChaveJ', value);

  int? get codigoProduto => getField<int>('Código Produto');
  set codigoProduto(int? value) => setField<int>('Código Produto', value);

  int? get codigoConvenio => getField<int>('Código Convênio');
  set codigoConvenio(int? value) => setField<int>('Código Convênio', value);

  String? get dataProposta => getField<String>('Data Proposta');
  set dataProposta(String? value) => setField<String>('Data Proposta', value);

  int? get numeroProposta => getField<int>('Número Proposta');
  set numeroProposta(int? value) => setField<int>('Número Proposta', value);

  int? get parcelas => getField<int>('Parcelas');
  set parcelas(int? value) => setField<int>('Parcelas', value);

  double? get valorFinanciado => getField<double>('Valor Financiado');
  set valorFinanciado(double? value) =>
      setField<double>('Valor Financiado', value);

  double? get valorFinanciadoLiquido =>
      getField<double>('Valor Financiado Líquido');
  set valorFinanciadoLiquido(double? value) =>
      setField<double>('Valor Financiado Líquido', value);

  String? get status => getField<String>('Status');
  set status(String? value) => setField<String>('Status', value);

  double? get taxaMensalDeJuros => getField<double>('Taxa Mensal de Juros');
  set taxaMensalDeJuros(double? value) =>
      setField<double>('Taxa Mensal de Juros', value);

  int? get prefixoAgResponsavel => getField<int>('Prefixo Ag. Responsável');
  set prefixoAgResponsavel(int? value) =>
      setField<int>('Prefixo Ag. Responsável', value);

  String? get cpf => getField<String>('CPF');
  set cpf(String? value) => setField<String>('CPF', value);

  String? get nomeCliente => getField<String>('Nome Cliente');
  set nomeCliente(String? value) => setField<String>('Nome Cliente', value);

  String? get motivoRetorno => getField<String>('Motivo Retorno');
  set motivoRetorno(String? value) => setField<String>('Motivo Retorno', value);

  String? get retorno => getField<String>('Retorno');
  set retorno(String? value) => setField<String>('Retorno', value);

  int get idProducao => getField<int>('id_producao')!;
  set idProducao(int value) => setField<int>('id_producao', value);

  int? get producoesHistoricosId => getField<int>('producoes_historicos_id');
  set producoesHistoricosId(int? value) =>
      setField<int>('producoes_historicos_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
