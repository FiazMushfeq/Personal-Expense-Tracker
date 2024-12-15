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
  static final _$createExpense = $grpc.ClientMethod<$0.CreateExpenseRequest, $0.CreateExpenseResponse>(
      '/ExpenseTracker/CreateExpense',
      ($0.CreateExpenseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateExpenseResponse.fromBuffer(value));
  static final _$deleteExpense = $grpc.ClientMethod<$0.DeleteExpenseRequest, $0.DeleteExpenseResponse>(
      '/ExpenseTracker/DeleteExpense',
      ($0.DeleteExpenseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteExpenseResponse.fromBuffer(value));
  static final _$updateExpense = $grpc.ClientMethod<$0.UpdateExpenseRequest, $0.UpdateExpenseResponse>(
      '/ExpenseTracker/UpdateExpense',
      ($0.UpdateExpenseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateExpenseResponse.fromBuffer(value));
  static final _$getExpense = $grpc.ClientMethod<$0.GetExpenseRequest, $0.GetExpenseResponse>(
      '/ExpenseTracker/GetExpense',
      ($0.GetExpenseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetExpenseResponse.fromBuffer(value));
  static final _$listExpenses = $grpc.ClientMethod<$0.ListExpensesRequest, $0.ListExpensesResponse>(
      '/ExpenseTracker/ListExpenses',
      ($0.ListExpensesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListExpensesResponse.fromBuffer(value));

  ExpenseTrackerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateExpenseResponse> createExpense($0.CreateExpenseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createExpense, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteExpenseResponse> deleteExpense($0.DeleteExpenseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteExpense, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateExpenseResponse> updateExpense($0.UpdateExpenseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateExpense, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetExpenseResponse> getExpense($0.GetExpenseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getExpense, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListExpensesResponse> listExpenses($0.ListExpensesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listExpenses, request, options: options);
  }
}

@$pb.GrpcServiceName('ExpenseTracker')
abstract class ExpenseTrackerServiceBase extends $grpc.Service {
  $core.String get $name => 'ExpenseTracker';

  ExpenseTrackerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateExpenseRequest, $0.CreateExpenseResponse>(
        'CreateExpense',
        createExpense_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateExpenseRequest.fromBuffer(value),
        ($0.CreateExpenseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteExpenseRequest, $0.DeleteExpenseResponse>(
        'DeleteExpense',
        deleteExpense_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteExpenseRequest.fromBuffer(value),
        ($0.DeleteExpenseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateExpenseRequest, $0.UpdateExpenseResponse>(
        'UpdateExpense',
        updateExpense_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateExpenseRequest.fromBuffer(value),
        ($0.UpdateExpenseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetExpenseRequest, $0.GetExpenseResponse>(
        'GetExpense',
        getExpense_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetExpenseRequest.fromBuffer(value),
        ($0.GetExpenseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListExpensesRequest, $0.ListExpensesResponse>(
        'ListExpenses',
        listExpenses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListExpensesRequest.fromBuffer(value),
        ($0.ListExpensesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateExpenseResponse> createExpense_Pre($grpc.ServiceCall call, $async.Future<$0.CreateExpenseRequest> request) async {
    return createExpense(call, await request);
  }

  $async.Future<$0.DeleteExpenseResponse> deleteExpense_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteExpenseRequest> request) async {
    return deleteExpense(call, await request);
  }

  $async.Future<$0.UpdateExpenseResponse> updateExpense_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateExpenseRequest> request) async {
    return updateExpense(call, await request);
  }

  $async.Future<$0.GetExpenseResponse> getExpense_Pre($grpc.ServiceCall call, $async.Future<$0.GetExpenseRequest> request) async {
    return getExpense(call, await request);
  }

  $async.Future<$0.ListExpensesResponse> listExpenses_Pre($grpc.ServiceCall call, $async.Future<$0.ListExpensesRequest> request) async {
    return listExpenses(call, await request);
  }

  $async.Future<$0.CreateExpenseResponse> createExpense($grpc.ServiceCall call, $0.CreateExpenseRequest request);
  $async.Future<$0.DeleteExpenseResponse> deleteExpense($grpc.ServiceCall call, $0.DeleteExpenseRequest request);
  $async.Future<$0.UpdateExpenseResponse> updateExpense($grpc.ServiceCall call, $0.UpdateExpenseRequest request);
  $async.Future<$0.GetExpenseResponse> getExpense($grpc.ServiceCall call, $0.GetExpenseRequest request);
  $async.Future<$0.ListExpensesResponse> listExpenses($grpc.ServiceCall call, $0.ListExpensesRequest request);
}
