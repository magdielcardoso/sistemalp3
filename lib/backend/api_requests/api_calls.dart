import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Dashboard Group Code

class DashboardGroup {
  static String getBaseUrl() =>
      'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
  };
  static TotalFinanciadoLiquidoCall totalFinanciadoLiquidoCall =
      TotalFinanciadoLiquidoCall();
  static TotalComissoesCall totalComissoesCall = TotalComissoesCall();
  static AllInfosComissoesCall allInfosComissoesCall = AllInfosComissoesCall();
  static ComissoesPorDiaCall comissoesPorDiaCall = ComissoesPorDiaCall();
  static ComissoesPorProdutoCall comissoesPorProdutoCall =
      ComissoesPorProdutoCall();
  static ComissoesPorRegiaoCall comissoesPorRegiaoCall =
      ComissoesPorRegiaoCall();
  static QuantidadeComissoesCall quantidadeComissoesCall =
      QuantidadeComissoesCall();
  static FinanciadoLiquidoPorDiaCall financiadoLiquidoPorDiaCall =
      FinanciadoLiquidoPorDiaCall();
  static QuantidadeVendasCall quantidadeVendasCall = QuantidadeVendasCall();
  static FinanciadoLiquidoPorAnoCall financiadoLiquidoPorAnoCall =
      FinanciadoLiquidoPorAnoCall();
  static FinanciadoLiquidoPorProdutoCall financiadoLiquidoPorProdutoCall =
      FinanciadoLiquidoPorProdutoCall();
  static FinanciadoLiquidoPorEstadoCall financiadoLiquidoPorEstadoCall =
      FinanciadoLiquidoPorEstadoCall();
  static FinanciadoLiquidoPorClienteCall financiadoLiquidoPorClienteCall =
      FinanciadoLiquidoPorClienteCall();
  static RelatoriosComissoesCall relatoriosComissoesCall =
      RelatoriosComissoesCall();
  static ComissoesVitaliciosCall comissoesVitaliciosCall =
      ComissoesVitaliciosCall();
  static ProducoesVitaliciosCall producoesVitaliciosCall =
      ProducoesVitaliciosCall();
  static RelatoriosAdminCall relatoriosAdminCall = RelatoriosAdminCall();
  static FinanciadoPorDiaAdminCall financiadoPorDiaAdminCall =
      FinanciadoPorDiaAdminCall();
  static ComissoesPorDiaAdminCall comissoesPorDiaAdminCall =
      ComissoesPorDiaAdminCall();
  static FinanciadoProdutoAdminCall financiadoProdutoAdminCall =
      FinanciadoProdutoAdminCall();
}

class TotalFinanciadoLiquidoCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TotalFinanciadoLiquido',
      apiUrl: '$baseUrl/gettotalproducao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalFinanciadoLiquido(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.total_financiado_liquido''',
      ));
}

class TotalComissoesCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TotalComissoes',
      apiUrl: '$baseUrl/gettotalcomissoes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalComissoes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.total_comissoes''',
      ));
}

class AllInfosComissoesCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '93387419-8998-4f96-9439-def9cb5aaec0',
    String? idGerente = '1618',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente",
  "gerente": "$idGerente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'All Infos Comissoes',
      apiUrl: '$baseUrl/getallcomissoesinfo',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalComissoes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.total_comissoes''',
      ));
}

class ComissoesPorDiaCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_final": "$pFinal",
  "p_inicial": "$pInicial",
  "agente": "$idAgente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesPorDia',
      apiUrl: '$baseUrl/getcomissoespordia',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? dia(dynamic response) => (getJsonField(
        response,
        r'''$[:].dia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? totalComissoes(dynamic response) => getJsonField(
        response,
        r'''$[:].total_comissoes''',
        true,
      ) as List?;
}

class ComissoesPorProdutoCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesPorProduto',
      apiUrl: '$baseUrl/gettotalcomissoesproduto',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? totalComissoes(dynamic response) => getJsonField(
        response,
        r'''$[:].total_comissoes''',
        true,
      ) as List?;
  List<int>? produto(dynamic response) => (getJsonField(
        response,
        r'''$[:].produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ComissoesPorRegiaoCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesPorRegiao',
      apiUrl: '$baseUrl/gettotalcomissoesregiao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? regiao(dynamic response) => (getJsonField(
        response,
        r'''$[:].regiao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? totalComissoes(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_comissoes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class QuantidadeComissoesCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '0',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'QuantidadeComissoes',
      apiUrl: '$baseUrl/getquantidadecomissoes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? qtdComissoes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.quantidade_comissoes''',
      ));
}

class FinanciadoLiquidoPorDiaCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoLiquidoPorDia',
      apiUrl: '$baseUrl/getganhosdiario',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? dia(dynamic response) => (getJsonField(
        response,
        r'''$[:].dia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? totalFinanciadoLiquido(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class QuantidadeVendasCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'QuantidadeVendas',
      apiUrl: '$baseUrl/getquantidadeproducao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? quantidadeVendas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.quantidade_vendas''',
      ));
}

class FinanciadoLiquidoPorAnoCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoLiquidoPorAno',
      apiUrl: '$baseUrl/gettotalanual',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ano(dynamic response) => (getJsonField(
        response,
        r'''$[:].ano''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? totalFinanciadoLiquido(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class FinanciadoLiquidoPorProdutoCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoLiquidoPorProduto',
      apiUrl: '$baseUrl/gettotalproduto',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<double>? totalFinanciadoLiquido(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? codigoProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class FinanciadoLiquidoPorEstadoCall {
  Future<ApiCallResponse> call({
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-01-01',
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoLiquidoPorEstado',
      apiUrl: '$baseUrl/gettotalregiao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<double>? totalFinanciadoLiquido(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? regiao(dynamic response) => (getJsonField(
        response,
        r'''$[:].regiao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class FinanciadoLiquidoPorClienteCall {
  Future<ApiCallResponse> call({
    String? cliente = 'Magdiel',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "cliente": "$cliente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoLiquidoPorCliente',
      apiUrl: '$baseUrl/gettotalcliente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalFinanciadoLiquido(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
      ));
  String? nomeCliente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cliente''',
      ));
}

class RelatoriosComissoesCall {
  Future<ApiCallResponse> call({
    String? idAgente = '',
    String? pInicial = '',
    String? pFinal = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente",
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RelatoriosComissoes',
      apiUrl: '$baseUrl/getrelatorios',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? agenteID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].agente_id''',
      ));
  double? totalComissoes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].total_comissoes''',
      ));
  int? quantidadeVendas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quantidade_vendas''',
      ));
  double? totalVendas(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valor_total_vendas''',
      ));
  int? produtoMaisVendido(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].produto_mais_vendido''',
      ));
  int? quantidadeComissoes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quantidade_comissoes''',
      ));
  double? mediaDiariaComissoes(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].media_diaria_comissoes''',
      ));
  double? mediaDiariaFinanciado(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].media_diaria_financiado''',
      ));
}

class ComissoesVitaliciosCall {
  Future<ApiCallResponse> call({
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesVitalicios',
      apiUrl: '$baseUrl/gettotalcomissoesvitalicio',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalComissoesVitalicio(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.total_comissoes''',
      ));
}

class ProducoesVitaliciosCall {
  Future<ApiCallResponse> call({
    String? idAgente = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "agente": "$idAgente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ProducoesVitalicios',
      apiUrl: '$baseUrl/gettotalproducoesvitalicio',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalFinanciadoLiquido(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.total_financiado''',
      ));
}

class RelatoriosAdminCall {
  Future<ApiCallResponse> call({
    String? pFinal = '',
    String? pInicial = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RelatoriosAdmin',
      apiUrl: '$baseUrl/getrelatoriosadmin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  double? totalComissoesAdmin(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].total_comissoes''',
      ));
  int? quantidadeVendasAdmin(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quantidade_vendas''',
      ));
  double? totalVendasAdmin(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valor_total_vendas''',
      ));
  int? produtoMaisVendidoAdmin(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].produto_mais_vendido''',
      ));
  int? quantidadeComissoesAdmin(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].quantidade_comissoes''',
      ));
  double? mediaDiariaComissoesAdmin(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].media_diaria_comissoes''',
      ));
  double? mediaDiariaFinanciadoAdmin(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].media_diaria_financiado''',
      ));
}

class FinanciadoPorDiaAdminCall {
  Future<ApiCallResponse> call({
    String? pInicial = '',
    String? pFinal = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoPorDiaAdmin',
      apiUrl: '$baseUrl/getfinanciadopordiaadmin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? dia(dynamic response) => (getJsonField(
        response,
        r'''$[:].dia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? totalFinanciadoAdmin(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ComissoesPorDiaAdminCall {
  Future<ApiCallResponse> call({
    String? pInicial = '',
    String? pFinal = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesPorDiaAdmin',
      apiUrl: '$baseUrl/getcomissoespordiaadmin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? dia(dynamic response) => (getJsonField(
        response,
        r'''$[:].dia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? totalComissoesAdmin(dynamic response) => getJsonField(
        response,
        r'''$[:].total_comissoes''',
        true,
      ) as List?;
}

class FinanciadoProdutoAdminCall {
  Future<ApiCallResponse> call({
    String? pInicial = '',
    String? pFinal = '',
  }) async {
    final baseUrl = DashboardGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_final": "$pFinal",
  "p_inicial": "$pInicial"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FinanciadoProdutoAdmin',
      apiUrl: '$baseUrl/getfinanciadoprodutoadmin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? produto(dynamic response) => (getJsonField(
        response,
        r'''$[:].produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? totalFinanciadoAdmin(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

/// End Dashboard Group Code

class VendasEquipesCall {
  static Future<ApiCallResponse> call({
    int? vendasMes,
    int? vendasTotal,
    String? nomeEquipe = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VendasEquipes',
      apiUrl: 'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/vendas_equipes',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idVendas(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeEquipe(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome_equipe''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? vendasMes(dynamic response) => (getJsonField(
        response,
        r'''$[:].vendas_mes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? vendasTotal(dynamic response) => (getJsonField(
        response,
        r'''$[:].vendas_total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AtualizarProducoesCall {
  static Future<ApiCallResponse> call({
    dynamic jsonDataFromCsvJson,
  }) async {
    final jsonDataFromCsv = _serializeJson(jsonDataFromCsvJson, true);
    final ffApiRequestBody = jsonDataFromCsv;
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarProducoes',
      apiUrl: 'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/producoesv2',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizarCampanhasCall {
  static Future<ApiCallResponse> call({
    dynamic jsonDataFromCsvJson,
  }) async {
    final jsonDataFromCsv = _serializeJson(jsonDataFromCsvJson, true);
    final ffApiRequestBody = jsonDataFromCsv;
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarCampanhas',
      apiUrl: 'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/campanha_leads',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ComissoesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Comissoes',
      apiUrl: 'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/comissoes',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idComissao(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_comissao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? valorFinanciado(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_financiado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? parcelas(dynamic response) => (getJsonField(
        response,
        r'''$[:].parcelas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? taxaJuros(dynamic response) => (getJsonField(
        response,
        r'''$[:].taxa_juros''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeAgente(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome_agente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? idAgente(dynamic response) => getJsonField(
        response,
        r'''$[:].id_agente''',
        true,
      ) as List?;
  static List<int>? idCargoAgente(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_cargo_agente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? nomeAgencia(dynamic response) => getJsonField(
        response,
        r'''$[:].nome_agencia''',
        true,
      ) as List?;
  static List<int>? agenciaId(dynamic response) => (getJsonField(
        response,
        r'''$[:].agencia_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? idProduto(dynamic response) => getJsonField(
        response,
        r'''$[:].id_produto''',
        true,
      ) as List?;
  static List? idConvenio(dynamic response) => getJsonField(
        response,
        r'''$[:].id_convenio''',
        true,
      ) as List?;
  static List<int>? idEstadoAgencia(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_estado_agencia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeCliente(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome_cliente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? valorComissao(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_comissao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? grupoConvenio(dynamic response) => (getJsonField(
        response,
        r'''$[:].grupo_convenio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? grupoProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].grupo_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? taxaComissao(dynamic response) => (getJsonField(
        response,
        r'''$[:].taxa_de_comissao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? tipoLocalAgencia(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_local_agencia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dataMovimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_movimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? valorAprovado(dynamic response) => getJsonField(
        response,
        r'''$[:].valor_aprovado''',
        true,
      ) as List?;
  static List<int>? codigoProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? codigoConvenio(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_convenio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? valorFinanciadoLiquido(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? dataProposta(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_proposta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? numeroProposta(dynamic response) => (getJsonField(
        response,
        r'''$[:].numero_proposta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? prefixoAgRsponsavel(dynamic response) => getJsonField(
        response,
        r'''$[:].prefixo_ag_responsavel''',
        true,
      ) as List?;
}

class VendasUltimoMesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Vendas Ultimo Mes',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/producoes_ultimos_30_dias',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = 'teste@gmail.com',
    String? password = '99874166Mm',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Usuario',
      apiUrl: 'https://icdmaamanntdpiucgyzj.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? idUsuario(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class ComissoesTrintaDiasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesTrintaDias',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/view_comissoes_30_dias',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? valorcomissao(dynamic response) => getJsonField(
        response,
        r'''$[:].valor_comissao''',
        true,
      ) as List?;
  static List<int>? valorliquidofinanciado(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_financiado_liquido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? dataproposta(dynamic response) => getJsonField(
        response,
        r'''$[:].data_proposta''',
        true,
      ) as List?;
  static List<String>? createdatt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_att''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$[:].uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? datamovimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_movimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idcomissao(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_comissao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ViewRelatoriosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ViewRelatorios',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/producoes_view_relatorios_60dias?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uid''',
      ));
  static int? qtdVendas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quantidade_vendas''',
      ));
  static double? valorTotalVendas(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].valor_total_vendas''',
      ));
  static int? totalComissoes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_comissoes''',
      ));
  static int? produtoMaisVendido(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].produto_mais_vendido''',
      ));
}

class CodigoProdutosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CodigoProdutos',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/producoes_codigo_produtos',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? codigoProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? grupoProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class UsuariosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Usuarios',
      apiUrl: 'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/usuarios',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? keyjUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].key_J''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? cpfUser(dynamic response) => getJsonField(
        response,
        r'''$[:].cpf''',
        true,
      ) as List?;
  static List? equipes1idUser(dynamic response) => getJsonField(
        response,
        r'''$[:].equipes_id_1''',
        true,
      ) as List?;
  static List? equipes2idUser(dynamic response) => getJsonField(
        response,
        r'''$[:].equipes_id_2''',
        true,
      ) as List?;
  static List? equipes3idUser(dynamic response) => getJsonField(
        response,
        r'''$[:].equipes_id_3''',
        true,
      ) as List?;
  static List? equipes4idUser(dynamic response) => getJsonField(
        response,
        r'''$[:].equipes_id_4''',
        true,
      ) as List?;
  static List<int>? cargosIdUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].cargos_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? metaUser(dynamic response) => getJsonField(
        response,
        r'''$[:].meta''',
        true,
      ) as List?;
  static List? estadosId(dynamic response) => getJsonField(
        response,
        r'''$[:].estados_id''',
        true,
      ) as List?;
  static List? agenciasId(dynamic response) => getJsonField(
        response,
        r'''$[:].agencias_id''',
        true,
      ) as List?;
  static List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? uidUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? emailUser(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? fotoPath(dynamic response) => getJsonField(
        response,
        r'''$[:].foto_path''',
        true,
      ) as List?;
}

class InserirProducoesHistoricoCall {
  static Future<ApiCallResponse> call({
    String? data = '29/04/2024',
  }) async {
    final ffApiRequestBody = '''
{
  "data": "$data"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inserir ProducoesHistorico',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/producoes_historicos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Prefer': 'return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? idHistorico(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class ComissoesCalculadasCall {
  static Future<ApiCallResponse> call({
    String? agente = 'ffecf2b2-3ddd-41ff-bba1-6c05a555c9fd',
    String? pInicial = '2019-01-01',
    String? pFinal = '2025-12-31',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ComissoesCalculadas',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/rpc/getcomissoescalculadas',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {
        'agente': agente,
        'p_inicial': pInicial,
        'p_final': pFinal,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PorcentagemProdutoMaisVendidoCall {
  static Future<ApiCallResponse> call({
    String? agente = '',
    int? produtoId,
  }) async {
    final ffApiRequestBody = '''
{
  "agente": "$agente",
  "produto_id": $produtoId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Porcentagem Produto Mais Vendido',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/rpc/porcentagem_produto_mais_vendido',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static double? percentProdutoMaisVendido(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.porcentagem''',
      ));
}

class PorcentagemMetaAgenteCall {
  static Future<ApiCallResponse> call({
    String? agente = '',
  }) async {
    final ffApiRequestBody = '''
{
  "agente": "$agente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Porcentagem Meta Agente',
      apiUrl:
          'https://icdmaamanntdpiucgyzj.supabase.co/rest/v1/rpc/calcular_porcentagem_meta',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljZG1hYW1hbm50ZHBpdWNneXpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MzY5NDEsImV4cCI6MjAyNjAxMjk0MX0.Xm2rw8JyVME9aeHIfaeqe2PmZHchEXeDT79azA1vLkY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static double? percentMetaAtingida(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.porcentagem_atingida''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
