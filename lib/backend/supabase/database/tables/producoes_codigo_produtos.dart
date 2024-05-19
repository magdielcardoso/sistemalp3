import '../database.dart';

class ProducoesCodigoProdutosTable
    extends SupabaseTable<ProducoesCodigoProdutosRow> {
  @override
  String get tableName => 'producoes_codigo_produtos';

  @override
  ProducoesCodigoProdutosRow createRow(Map<String, dynamic> data) =>
      ProducoesCodigoProdutosRow(data);
}

class ProducoesCodigoProdutosRow extends SupabaseDataRow {
  ProducoesCodigoProdutosRow(super.data);

  @override
  SupabaseTable get table => ProducoesCodigoProdutosTable();

  int get idProduto => getField<int>('id_produto')!;
  set idProduto(int value) => setField<int>('id_produto', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int get codigo => getField<int>('codigo')!;
  set codigo(int value) => setField<int>('codigo', value);

  int? get grupo => getField<int>('grupo');
  set grupo(int? value) => setField<int>('grupo', value);
}
