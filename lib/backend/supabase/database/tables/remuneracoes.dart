import '../database.dart';

class RemuneracoesTable extends SupabaseTable<RemuneracoesRow> {
  @override
  String get tableName => 'remuneracoes';

  @override
  RemuneracoesRow createRow(Map<String, dynamic> data) => RemuneracoesRow(data);
}

class RemuneracoesRow extends SupabaseDataRow {
  RemuneracoesRow(super.data);

  @override
  SupabaseTable get table => RemuneracoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get producoesCodigosConveniosGrupo =>
      getField<int>('producoes_codigos_convenios_grupo');
  set producoesCodigosConveniosGrupo(int? value) =>
      setField<int>('producoes_codigos_convenios_grupo', value);

  int? get producoesCodigosProdutosGrupo =>
      getField<int>('producoes_codigos_produtos_grupo');
  set producoesCodigosProdutosGrupo(int? value) =>
      setField<int>('producoes_codigos_produtos_grupo', value);

  int? get locaisEstadosId => getField<int>('locais_estados_id');
  set locaisEstadosId(int? value) => setField<int>('locais_estados_id', value);

  int? get cargosId => getField<int>('cargos_id');
  set cargosId(int? value) => setField<int>('cargos_id', value);

  String? get locaisTipo => getField<String>('locais_tipo');
  set locaisTipo(String? value) => setField<String>('locais_tipo', value);

  double? get faixaInicial => getField<double>('faixa_inicial');
  set faixaInicial(double? value) => setField<double>('faixa_inicial', value);

  double? get faixaFinal => getField<double>('faixa_final');
  set faixaFinal(double? value) => setField<double>('faixa_final', value);

  double? get prazoInicial => getField<double>('prazo_inicial');
  set prazoInicial(double? value) => setField<double>('prazo_inicial', value);

  double? get prazoFinal => getField<double>('prazo_final');
  set prazoFinal(double? value) => setField<double>('prazo_final', value);

  double? get producaoInicial => getField<double>('producao_inicial');
  set producaoInicial(double? value) =>
      setField<double>('producao_inicial', value);

  double? get producaoFinal => getField<double>('producao_final');
  set producaoFinal(double? value) => setField<double>('producao_final', value);

  double? get remuneracao => getField<double>('remuneracao');
  set remuneracao(double? value) => setField<double>('remuneracao', value);

  double? get remuneracaoMeta => getField<double>('remuneracao_meta');
  set remuneracaoMeta(double? value) =>
      setField<double>('remuneracao_meta', value);

  int? get deletado => getField<int>('deletado');
  set deletado(int? value) => setField<int>('deletado', value);
}
