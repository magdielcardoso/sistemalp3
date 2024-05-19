import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _varDataInicial = prefs.getString('ff_varDataInicial') ?? _varDataInicial;
    });
    _safeInit(() {
      _varDataFinal = prefs.getString('ff_varDataFinal') ?? _varDataFinal;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ClassSerieDiasStruct> _serieTemporal = [];
  List<ClassSerieDiasStruct> get serieTemporal => _serieTemporal;
  set serieTemporal(List<ClassSerieDiasStruct> value) {
    _serieTemporal = value;
  }

  void addToSerieTemporal(ClassSerieDiasStruct value) {
    _serieTemporal.add(value);
  }

  void removeFromSerieTemporal(ClassSerieDiasStruct value) {
    _serieTemporal.remove(value);
  }

  void removeAtIndexFromSerieTemporal(int index) {
    _serieTemporal.removeAt(index);
  }

  void updateSerieTemporalAtIndex(
    int index,
    ClassSerieDiasStruct Function(ClassSerieDiasStruct) updateFn,
  ) {
    _serieTemporal[index] = updateFn(_serieTemporal[index]);
  }

  void insertAtIndexInSerieTemporal(int index, ClassSerieDiasStruct value) {
    _serieTemporal.insert(index, value);
  }

  List<ClassAnoStruct> _serieAnual = [];
  List<ClassAnoStruct> get serieAnual => _serieAnual;
  set serieAnual(List<ClassAnoStruct> value) {
    _serieAnual = value;
  }

  void addToSerieAnual(ClassAnoStruct value) {
    _serieAnual.add(value);
  }

  void removeFromSerieAnual(ClassAnoStruct value) {
    _serieAnual.remove(value);
  }

  void removeAtIndexFromSerieAnual(int index) {
    _serieAnual.removeAt(index);
  }

  void updateSerieAnualAtIndex(
    int index,
    ClassAnoStruct Function(ClassAnoStruct) updateFn,
  ) {
    _serieAnual[index] = updateFn(_serieAnual[index]);
  }

  void insertAtIndexInSerieAnual(int index, ClassAnoStruct value) {
    _serieAnual.insert(index, value);
  }

  String _varDataInicial = '2019-01-01';
  String get varDataInicial => _varDataInicial;
  set varDataInicial(String value) {
    _varDataInicial = value;
    prefs.setString('ff_varDataInicial', value);
  }

  String _varDataFinal = '2025-01-01';
  String get varDataFinal => _varDataFinal;
  set varDataFinal(String value) {
    _varDataFinal = value;
    prefs.setString('ff_varDataFinal', value);
  }

  List<ClassRegiaoStruct> _regiao = [];
  List<ClassRegiaoStruct> get regiao => _regiao;
  set regiao(List<ClassRegiaoStruct> value) {
    _regiao = value;
  }

  void addToRegiao(ClassRegiaoStruct value) {
    _regiao.add(value);
  }

  void removeFromRegiao(ClassRegiaoStruct value) {
    _regiao.remove(value);
  }

  void removeAtIndexFromRegiao(int index) {
    _regiao.removeAt(index);
  }

  void updateRegiaoAtIndex(
    int index,
    ClassRegiaoStruct Function(ClassRegiaoStruct) updateFn,
  ) {
    _regiao[index] = updateFn(_regiao[index]);
  }

  void insertAtIndexInRegiao(int index, ClassRegiaoStruct value) {
    _regiao.insert(index, value);
  }

  double _totalComissoes = 0.0;
  double get totalComissoes => _totalComissoes;
  set totalComissoes(double value) {
    _totalComissoes = value;
  }

  int _quantidadeVendas = 0;
  int get quantidadeVendas => _quantidadeVendas;
  set quantidadeVendas(int value) {
    _quantidadeVendas = value;
  }

  double _totalVendas = 0.0;
  double get totalVendas => _totalVendas;
  set totalVendas(double value) {
    _totalVendas = value;
  }

  int _quantidadeComissoes = 0;
  int get quantidadeComissoes => _quantidadeComissoes;
  set quantidadeComissoes(int value) {
    _quantidadeComissoes = value;
  }

  double _mediaDiariaComissoes = 0.0;
  double get mediaDiariaComissoes => _mediaDiariaComissoes;
  set mediaDiariaComissoes(double value) {
    _mediaDiariaComissoes = value;
  }

  double _mediaDiariaFinanciado = 0.0;
  double get mediaDiariaFinanciado => _mediaDiariaFinanciado;
  set mediaDiariaFinanciado(double value) {
    _mediaDiariaFinanciado = value;
  }

  int _produtoMaisVendidoCodigo = 0;
  int get produtoMaisVendidoCodigo => _produtoMaisVendidoCodigo;
  set produtoMaisVendidoCodigo(int value) {
    _produtoMaisVendidoCodigo = value;
  }

  bool _varEditando = false;
  bool get varEditando => _varEditando;
  set varEditando(bool value) {
    _varEditando = value;
  }

  double _totalComissoesVitalicias = 0.0;
  double get totalComissoesVitalicias => _totalComissoesVitalicias;
  set totalComissoesVitalicias(double value) {
    _totalComissoesVitalicias = value;
  }

  double _totalProducoesVitalicios = 0.0;
  double get totalProducoesVitalicios => _totalProducoesVitalicios;
  set totalProducoesVitalicios(double value) {
    _totalProducoesVitalicios = value;
  }

  double _totalComissoesAdmin = 0.0;
  double get totalComissoesAdmin => _totalComissoesAdmin;
  set totalComissoesAdmin(double value) {
    _totalComissoesAdmin = value;
  }

  double _totalVendasAdmin = 0.0;
  double get totalVendasAdmin => _totalVendasAdmin;
  set totalVendasAdmin(double value) {
    _totalVendasAdmin = value;
  }

  int _quantidadeVendasAdmin = 0;
  int get quantidadeVendasAdmin => _quantidadeVendasAdmin;
  set quantidadeVendasAdmin(int value) {
    _quantidadeVendasAdmin = value;
  }

  int _quantidadeComissoesAdmin = 0;
  int get quantidadeComissoesAdmin => _quantidadeComissoesAdmin;
  set quantidadeComissoesAdmin(int value) {
    _quantidadeComissoesAdmin = value;
  }

  double _mediaDiariaComissoesAdmin = 0.0;
  double get mediaDiariaComissoesAdmin => _mediaDiariaComissoesAdmin;
  set mediaDiariaComissoesAdmin(double value) {
    _mediaDiariaComissoesAdmin = value;
  }

  double _mediaDiariaFinanciadoAdmin = 0.0;
  double get mediaDiariaFinanciadoAdmin => _mediaDiariaFinanciadoAdmin;
  set mediaDiariaFinanciadoAdmin(double value) {
    _mediaDiariaFinanciadoAdmin = value;
  }

  int _produtoMaisVendidoCodigoAdmin = 0;
  int get produtoMaisVendidoCodigoAdmin => _produtoMaisVendidoCodigoAdmin;
  set produtoMaisVendidoCodigoAdmin(int value) {
    _produtoMaisVendidoCodigoAdmin = value;
  }

  double _totalFinanciadoCliente = 0.0;
  double get totalFinanciadoCliente => _totalFinanciadoCliente;
  set totalFinanciadoCliente(double value) {
    _totalFinanciadoCliente = value;
  }

  int _cargoid = 0;
  int get cargoid => _cargoid;
  set cargoid(int value) {
    _cargoid = value;
  }

  String _statusComissao = 'Pendente';
  String get statusComissao => _statusComissao;
  set statusComissao(String value) {
    _statusComissao = value;
  }

  double _percentProdutoMaisVendido = 0.0;
  double get percentProdutoMaisVendido => _percentProdutoMaisVendido;
  set percentProdutoMaisVendido(double value) {
    _percentProdutoMaisVendido = value;
  }

  String _userUid = '';
  String get userUid => _userUid;
  set userUid(String value) {
    _userUid = value;
  }

  String _fotoPath = '';
  String get fotoPath => _fotoPath;
  set fotoPath(String value) {
    _fotoPath = value;
  }

  final _queryComissoesCacheManager =
      FutureRequestManager<List<ComissoesRow>>();
  Future<List<ComissoesRow>> queryComissoesCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ComissoesRow>> Function() requestFn,
  }) =>
      _queryComissoesCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryComissoesCacheCache() => _queryComissoesCacheManager.clear();
  void clearQueryComissoesCacheCacheKey(String? uniqueKey) =>
      _queryComissoesCacheManager.clearRequest(uniqueKey);

  final _queryCacheNomeManager = FutureRequestManager<List<UsuariosRow>>();
  Future<List<UsuariosRow>> queryCacheNome({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsuariosRow>> Function() requestFn,
  }) =>
      _queryCacheNomeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryCacheNomeCache() => _queryCacheNomeManager.clear();
  void clearQueryCacheNomeCacheKey(String? uniqueKey) =>
      _queryCacheNomeManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
