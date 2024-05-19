import '../database.dart';

class GruposProdutosTable extends SupabaseTable<GruposProdutosRow> {
  @override
  String get tableName => 'grupos_produtos';

  @override
  GruposProdutosRow createRow(Map<String, dynamic> data) =>
      GruposProdutosRow(data);
}

class GruposProdutosRow extends SupabaseDataRow {
  GruposProdutosRow(super.data);

  @override
  SupabaseTable get table => GruposProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  int get codigoGrupo => getField<int>('codigo_grupo')!;
  set codigoGrupo(int value) => setField<int>('codigo_grupo', value);
}
