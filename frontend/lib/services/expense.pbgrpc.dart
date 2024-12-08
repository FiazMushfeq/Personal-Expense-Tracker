//
//  Generated code. Do not modify.
//  source: expense.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'expense.pb.dart' as $0;

export 'expense.pb.dart';

@$pb.GrpcServiceName('ExpenseTracker')
class ExpenseTrackerClient extends $grpc.Client {
  static final _$listExpenses = $grpc.ClientMethod<$0.ListExpensesRequest, $0.ListExpensesResponse>(
      '/ExpenseTracker/ListExpenses',
      ($0.ListExpensesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListExpensesResponse.fromBuffer(value));
  static final _$createExpenses = $grpc.ClientMethod<$0.CreateExpensesRequest, $0.CreateExpensesResponse>(
      '/ExpenseTracker/CreateExpenses',
      ($0.CreateExpensesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateExpensesResponse.fromBuffer(value));
  static final _$deleteExpenses = $grpc.ClientMethod<$0.DeleteExpensesRequest, $0.DeleteExpensesResponse>(
      '/ExpenseTracker/DeleteExpenses',
      ($0.DeleteExpensesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteExpensesResponse.fromBuffer(value));
  static final _$updateExpenses = $grpc.ClientMethod<$0.UpdateExpensesRequest, $0.UpdateExpensesResponse>(
      '/ExpenseTracker/UpdateExpenses',
      ($0.UpdateExpensesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateExpensesResponse.fromBuffer(value));
  static final _$getSummary = $grpc.ClientMethod<$0.GetSummaryRequest, $0.GetSummaryResponse>(
      '/ExpenseTracker/GetSummary',
      ($0.GetSummaryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSummaryResponse.fromBuffer(value));

  ExpenseTrackerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListExpensesResponse> listExpenses($0.ListExpensesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listExpenses, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateExpensesResponse> createExpenses($0.CreateExpensesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createExpenses, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteExpensesResponse> deleteExpenses($0.DeleteExpensesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteExpenses, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateExpensesResponse> updateExpenses($0.UpdateExpensesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateExpenses, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSummaryResponse> getSummary($0.GetSummaryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSummary, request, options: options);
  }
}

@$pb.GrpcServiceName('ExpenseTracker')
abstract class ExpenseTrackerServiceBase extends $grpc.Service {
  $core.String get $name => 'ExpenseTracker';

  ExpenseTrackerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListExpensesRequest, $0.ListExpensesResponse>(
        'ListExpenses',
        listExpenses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListExpensesRequest.fromBuffer(value),
        ($0.ListExpensesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateExpensesRequest, $0.CreateExpensesResponse>(
        'CreateExpenses',
        createExpenses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateExpensesRequest.fromBuffer(value),
        ($0.CreateExpensesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteExpensesRequest, $0.DeleteExpensesResponse>(
        'DeleteExpenses',
        deleteExpenses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteExpensesRequest.fromBuffer(value),
        ($0.DeleteExpensesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateExpensesRequest, $0.UpdateExpensesResponse>(
        'UpdateExpenses',
        updateExpenses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateExpensesRequest.fromBuffer(value),
        ($0.UpdateExpensesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSummaryRequest, $0.GetSummaryResponse>(
        'GetSummary',
        getSummary_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSummaryRequest.fromBuffer(value),
        ($0.GetSummaryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListExpensesResponse> listExpenses_Pre($grpc.ServiceCall call, $async.Future<$0.ListExpensesRequest> request) async {
    return listExpenses(call, await request);
  }

  $async.Future<$0.CreateExpensesResponse> createExpenses_Pre($grpc.ServiceCall call, $async.Future<$0.CreateExpensesRequest> request) async {
    return createExpenses(call, await request);
  }

  $async.Future<$0.DeleteExpensesResponse> deleteExpenses_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteExpensesRequest> request) async {
    return deleteExpenses(call, await request);
  }

  $async.Future<$0.UpdateExpensesResponse> updateExpenses_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateExpensesRequest> request) async {
    return updateExpenses(call, await request);
  }

  $async.Future<$0.GetSummaryResponse> getSummary_Pre($grpc.ServiceCall call, $async.Future<$0.GetSummaryRequest> request) async {
    return getSummary(call, await request);
  }

  $async.Future<$0.ListExpensesResponse> listExpenses($grpc.ServiceCall call, $0.ListExpensesRequest request);
  $async.Future<$0.CreateExpensesResponse> createExpenses($grpc.ServiceCall call, $0.CreateExpensesRequest request);
  $async.Future<$0.DeleteExpensesResponse> deleteExpenses($grpc.ServiceCall call, $0.DeleteExpensesRequest request);
  $async.Future<$0.UpdateExpensesResponse> updateExpenses($grpc.ServiceCall call, $0.UpdateExpensesRequest request);
  $async.Future<$0.GetSummaryResponse> getSummary($grpc.ServiceCall call, $0.GetSummaryRequest request);
}
