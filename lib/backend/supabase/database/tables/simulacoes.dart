import '../database.dart';

class SimulacoesTable extends SupabaseTable<SimulacoesRow> {
  @override
  String get tableName => 'simulacoes';

  @override
  SimulacoesRow createRow(Map<String, dynamic> data) => SimulacoesRow(data);
}

class SimulacoesRow extends SupabaseDataRow {
  SimulacoesRow(super.data);

  @override
  SupabaseTable get table => SimulacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get valorSolicitado => getField<String>('valor_solicitado');
  set valorSolicitado(String? value) =>
      setField<String>('valor_solicitado', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get orgaoPagador => getField<String>('orgao_pagador');
  set orgaoPagador(String? value) => setField<String>('orgao_pagador', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get negativado => getField<String>('negativado');
  set negativado(String? value) => setField<String>('negativado', value);

  String? get possuiVeiculo => getField<String>('possui_veiculo');
  set possuiVeiculo(String? value) => setField<String>('possui_veiculo', value);

  String? get possuiImovel => getField<String>('possui_imovel');
  set possuiImovel(String? value) => setField<String>('possui_imovel', value);

  String? get parcelas => getField<String>('parcelas');
  set parcelas(String? value) => setField<String>('parcelas', value);
}
