import '../database.dart';

class ClientesTable extends SupabaseTable<ClientesRow> {
  @override
  String get tableName => 'clientes';

  @override
  ClientesRow createRow(Map<String, dynamic> data) => ClientesRow(data);
}

class ClientesRow extends SupabaseDataRow {
  ClientesRow(super.data);

  @override
  SupabaseTable get table => ClientesTable();

  int get idCliente => getField<int>('id_cliente')!;
  set idCliente(int value) => setField<int>('id_cliente', value);

  int? get codigoConvenio => getField<int>('codigo_convenio');
  set codigoConvenio(int? value) => setField<int>('codigo_convenio', value);

  String? get sgUF => getField<String>('sg_UF');
  set sgUF(String? value) => setField<String>('sg_UF', value);

  int? get prefixoRelacionamento => getField<int>('prefixo_relacionamento');
  set prefixoRelacionamento(int? value) =>
      setField<int>('prefixo_relacionamento', value);

  int? get prefixoDependencia => getField<int>('prefixo_dependencia');
  set prefixoDependencia(int? value) =>
      setField<int>('prefixo_dependencia', value);

  int? get contaCorrente => getField<int>('conta_corrente');
  set contaCorrente(int? value) => setField<int>('conta_corrente', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get dataNascimento => getField<String>('data_nascimento');
  set dataNascimento(String? value) =>
      setField<String>('data_nascimento', value);

  String? get cpfCliente => getField<String>('cpf_cliente');
  set cpfCliente(String? value) => setField<String>('cpf_cliente', value);

  int? get ddd01 => getField<int>('ddd_01');
  set ddd01(int? value) => setField<int>('ddd_01', value);

  int? get tel01 => getField<int>('tel_01');
  set tel01(int? value) => setField<int>('tel_01', value);

  int? get ddd02 => getField<int>('ddd_02');
  set ddd02(int? value) => setField<int>('ddd_02', value);

  double? get tel02 => getField<double>('tel_02');
  set tel02(double? value) => setField<double>('tel_02', value);

  int? get matriculaCliente => getField<int>('matricula_cliente');
  set matriculaCliente(int? value) => setField<int>('matricula_cliente', value);

  String? get dataContratacao => getField<String>('data_contratacao');
  set dataContratacao(String? value) =>
      setField<String>('data_contratacao', value);

  String? get produtoNome => getField<String>('produto_nome');
  set produtoNome(String? value) => setField<String>('produto_nome', value);

  double? get valorContratado => getField<double>('valor_contratado');
  set valorContratado(double? value) =>
      setField<double>('valor_contratado', value);

  double? get data1parcela => getField<double>('data_1parcela');
  set data1parcela(double? value) => setField<double>('data_1parcela', value);

  String? get statusAtendimento => getField<String>('status_atendimento');
  set statusAtendimento(String? value) =>
      setField<String>('status_atendimento', value);

  String? get agendamento => getField<String>('agendamento');
  set agendamento(String? value) => setField<String>('agendamento', value);

  String? get fotoPath => getField<String>('foto_path');
  set fotoPath(String? value) => setField<String>('foto_path', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get tier => getField<String>('tier');
  set tier(String? value) => setField<String>('tier', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
