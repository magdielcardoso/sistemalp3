import '../database.dart';

class VendasEquipesTable extends SupabaseTable<VendasEquipesRow> {
  @override
  String get tableName => 'vendas_equipes';

  @override
  VendasEquipesRow createRow(Map<String, dynamic> data) =>
      VendasEquipesRow(data);
}

class VendasEquipesRow extends SupabaseDataRow {
  VendasEquipesRow(super.data);

  @override
  SupabaseTable get table => VendasEquipesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeEquipe => getField<String>('nome_equipe');
  set nomeEquipe(String? value) => setField<String>('nome_equipe', value);

  int? get vendasMes => getField<int>('vendas_mes');
  set vendasMes(int? value) => setField<int>('vendas_mes', value);

  double? get vendasTotal => getField<double>('vendas_total');
  set vendasTotal(double? value) => setField<double>('vendas_total', value);
}
