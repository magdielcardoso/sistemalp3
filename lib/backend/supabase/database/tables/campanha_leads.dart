import '../database.dart';

class CampanhaLeadsTable extends SupabaseTable<CampanhaLeadsRow> {
  @override
  String get tableName => 'campanha_leads';

  @override
  CampanhaLeadsRow createRow(Map<String, dynamic> data) =>
      CampanhaLeadsRow(data);
}

class CampanhaLeadsRow extends SupabaseDataRow {
  CampanhaLeadsRow(super.data);

  @override
  SupabaseTable get table => CampanhaLeadsTable();

  String? get localizador => getField<String>('Localizador');
  set localizador(String? value) => setField<String>('Localizador', value);

  String? get publico => getField<String>('Publico');
  set publico(String? value) => setField<String>('Publico', value);

  String? get sexo => getField<String>('Sexo');
  set sexo(String? value) => setField<String>('Sexo', value);

  int? get mciEmpregadorCadastro => getField<int>('Mci_Empregador_Cadastro');
  set mciEmpregadorCadastro(int? value) =>
      setField<int>('Mci_Empregador_Cadastro', value);

  int? get nrCnv13Salario => getField<int>('Nr_Cnv_13_Salario');
  set nrCnv13Salario(int? value) => setField<int>('Nr_Cnv_13_Salario', value);

  int? get nrCnvConsig => getField<int>('Nr_Cnv_Consig');
  set nrCnvConsig(int? value) => setField<int>('Nr_Cnv_Consig', value);

  int? get nrCvnSalario => getField<int>('nr_cvn_Salario');
  set nrCvnSalario(int? value) => setField<int>('nr_cvn_Salario', value);

  String? get sgUF => getField<String>('Sg_UF');
  set sgUF(String? value) => setField<String>('Sg_UF', value);

  int? get superField => getField<int>('Super');
  set superField(int? value) => setField<int>('Super', value);

  int? get gerev => getField<int>('Gerev');
  set gerev(int? value) => setField<int>('Gerev', value);

  int? get prefixoRelacionamento => getField<int>('Prefixo_Relacionamento');
  set prefixoRelacionamento(int? value) =>
      setField<int>('Prefixo_Relacionamento', value);

  int? get prfDepe => getField<int>('Prf_Depe');
  set prfDepe(int? value) => setField<int>('Prf_Depe', value);

  String? get nrCC => getField<String>('Nr_CC');
  set nrCC(String? value) => setField<String>('Nr_CC', value);

  String? get nome => getField<String>('Nome');
  set nome(String? value) => setField<String>('Nome', value);

  String? get dtNascimento => getField<String>('Dt_Nascimento');
  set dtNascimento(String? value) => setField<String>('Dt_Nascimento', value);

  int? get cpf => getField<int>('CPF');
  set cpf(int? value) => setField<int>('CPF', value);

  int? get ddd01 => getField<int>('DDD_01');
  set ddd01(int? value) => setField<int>('DDD_01', value);

  int? get tel01 => getField<int>('Tel_01');
  set tel01(int? value) => setField<int>('Tel_01', value);

  int? get ddd02 => getField<int>('DDD_02');
  set ddd02(int? value) => setField<int>('DDD_02', value);

  int? get tel02 => getField<int>('Tel_02');
  set tel02(int? value) => setField<int>('Tel_02', value);

  int? get ddd03 => getField<int>('DDD_03');
  set ddd03(int? value) => setField<int>('DDD_03', value);

  int? get tel03 => getField<int>('Tel_03');
  set tel03(int? value) => setField<int>('Tel_03', value);

  int? get ddd04 => getField<int>('DDD_04');
  set ddd04(int? value) => setField<int>('DDD_04', value);

  int? get tel04 => getField<int>('Tel_04');
  set tel04(int? value) => setField<int>('Tel_04', value);

  int? get ddd05 => getField<int>('DDD_05');
  set ddd05(int? value) => setField<int>('DDD_05', value);

  int? get tel05 => getField<int>('Tel_05');
  set tel05(int? value) => setField<int>('Tel_05', value);

  int? get ddd06 => getField<int>('DDD_06');
  set ddd06(int? value) => setField<int>('DDD_06', value);

  int? get tel06 => getField<int>('Tel_06');
  set tel06(int? value) => setField<int>('Tel_06', value);

  String? get ddd07 => getField<String>('DDD_07');
  set ddd07(String? value) => setField<String>('DDD_07', value);

  String? get tel07 => getField<String>('Tel_07');
  set tel07(String? value) => setField<String>('Tel_07', value);

  String? get ddd08 => getField<String>('DDD_08');
  set ddd08(String? value) => setField<String>('DDD_08', value);

  String? get tel08 => getField<String>('Tel_08');
  set tel08(String? value) => setField<String>('Tel_08', value);

  String? get ddd09 => getField<String>('DDD_09');
  set ddd09(String? value) => setField<String>('DDD_09', value);

  String? get tel09 => getField<String>('Tel_09');
  set tel09(String? value) => setField<String>('Tel_09', value);

  String? get ddd10 => getField<String>('DDD_10');
  set ddd10(String? value) => setField<String>('DDD_10', value);

  String? get tel10 => getField<String>('Tel_10');
  set tel10(String? value) => setField<String>('Tel_10', value);

  int? get mci => getField<int>('Mci');
  set mci(int? value) => setField<int>('Mci', value);

  String? get cdIdrfBnfc => getField<String>('Cd_Idrf_Bnfc');
  set cdIdrfBnfc(String? value) => setField<String>('Cd_Idrf_Bnfc', value);

  String? get dtPrimeiroPag => getField<String>('Dt_Primeiro_Pag');
  set dtPrimeiroPag(String? value) =>
      setField<String>('Dt_Primeiro_Pag', value);

  String? get maiorLimiteDeCreditoNovo =>
      getField<String>('Maior_Limite_De_Credito_Novo');
  set maiorLimiteDeCreditoNovo(String? value) =>
      setField<String>('Maior_Limite_De_Credito_Novo', value);

  int? get codCoban => getField<int>('Cod_Coban');
  set codCoban(int? value) => setField<int>('Cod_Coban', value);

  int? get codCampanha => getField<int>('Cod_Campanha');
  set codCampanha(int? value) => setField<int>('Cod_Campanha', value);

  String? get produto => getField<String>('Produto');
  set produto(String? value) => setField<String>('Produto', value);

  int? get campanhaHistorico => getField<int>('campanha_historico');
  set campanhaHistorico(int? value) =>
      setField<int>('campanha_historico', value);
}
