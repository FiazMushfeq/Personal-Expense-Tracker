//
//  Generated code. Do not modify.
//  source: expense.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use expenseCategoryDescriptor instead')
const ExpenseCategory$json = {
  '1': 'ExpenseCategory',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'FOOD', '2': 1},
    {'1': 'TRANSPORT', '2': 2},
    {'1': 'SHOPPING', '2': 3},
    {'1': 'ENTERTAINMENT', '2': 4},
    {'1': 'BILLS', '2': 5},
    {'1': 'EDUCATION', '2': 6},
    {'1': 'HEALTH', '2': 7},
    {'1': 'OTHER', '2': 8},
  ],
};

/// Descriptor for `ExpenseCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List expenseCategoryDescriptor = $convert.base64Decode(
    'Cg9FeHBlbnNlQ2F0ZWdvcnkSCwoHVU5LTk9XThAAEggKBEZPT0QQARINCglUUkFOU1BPUlQQAh'
    'IMCghTSE9QUElORxADEhEKDUVOVEVSVEFJTk1FTlQQBBIJCgVCSUxMUxAFEg0KCUVEVUNBVElP'
    'ThAGEgoKBkhFQUxUSBAHEgkKBU9USEVSEAg=');

@$core.Deprecated('Use expenseDescriptor instead')
const Expense$json = {
  '1': 'Expense',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'category', '3': 4, '4': 1, '5': 14, '6': '.ExpenseCategory', '10': 'category'},
    {'1': 'date', '3': 5, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `Expense`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expenseDescriptor = $convert.base64Decode(
    'CgdFeHBlbnNlEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFgoGYW1vdW'
    '50GAMgASgBUgZhbW91bnQSLAoIY2F0ZWdvcnkYBCABKA4yEC5FeHBlbnNlQ2F0ZWdvcnlSCGNh'
    'dGVnb3J5EhIKBGRhdGUYBSABKAlSBGRhdGU=');

@$core.Deprecated('Use createExpenseRequestDescriptor instead')
const CreateExpenseRequest$json = {
  '1': 'CreateExpenseRequest',
  '2': [
    {'1': 'expense', '3': 1, '4': 1, '5': 11, '6': '.Expense', '10': 'expense'},
  ],
};

/// Descriptor for `CreateExpenseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createExpenseRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVFeHBlbnNlUmVxdWVzdBIiCgdleHBlbnNlGAEgASgLMgguRXhwZW5zZVIHZXhwZW'
    '5zZQ==');

@$core.Deprecated('Use deleteExpenseRequestDescriptor instead')
const DeleteExpenseRequest$json = {
  '1': 'DeleteExpenseRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteExpenseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteExpenseRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVFeHBlbnNlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use updateExpenseRequestDescriptor instead')
const UpdateExpenseRequest$json = {
  '1': 'UpdateExpenseRequest',
  '2': [
    {'1': 'expense', '3': 1, '4': 1, '5': 11, '6': '.Expense', '10': 'expense'},
  ],
};

/// Descriptor for `UpdateExpenseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateExpenseRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVFeHBlbnNlUmVxdWVzdBIiCgdleHBlbnNlGAEgASgLMgguRXhwZW5zZVIHZXhwZW'
    '5zZQ==');

@$core.Deprecated('Use getExpenseRequestDescriptor instead')
const GetExpenseRequest$json = {
  '1': 'GetExpenseRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetExpenseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getExpenseRequestDescriptor = $convert.base64Decode(
    'ChFHZXRFeHBlbnNlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use listExpensesRequestDescriptor instead')
const ListExpensesRequest$json = {
  '1': 'ListExpensesRequest',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `ListExpensesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExpensesRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0RXhwZW5zZXNSZXF1ZXN0EhIKBGRhdGUYASABKAlSBGRhdGU=');

@$core.Deprecated('Use createExpenseResponseDescriptor instead')
const CreateExpenseResponse$json = {
  '1': 'CreateExpenseResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.SuccessStatus', '10': 'status'},
  ],
};

/// Descriptor for `CreateExpenseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createExpenseResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVFeHBlbnNlUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEiYKBnN0YXR1cxgCIAEoCz'
    'IOLlN1Y2Nlc3NTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use deleteExpenseResponseDescriptor instead')
const DeleteExpenseResponse$json = {
  '1': 'DeleteExpenseResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.SuccessStatus', '10': 'status'},
  ],
};

/// Descriptor for `DeleteExpenseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteExpenseResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVFeHBlbnNlUmVzcG9uc2USJgoGc3RhdHVzGAEgASgLMg4uU3VjY2Vzc1N0YXR1c1'
    'IGc3RhdHVz');

@$core.Deprecated('Use updateExpenseResponseDescriptor instead')
const UpdateExpenseResponse$json = {
  '1': 'UpdateExpenseResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.SuccessStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateExpenseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateExpenseResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVFeHBlbnNlUmVzcG9uc2USJgoGc3RhdHVzGAEgASgLMg4uU3VjY2Vzc1N0YXR1c1'
    'IGc3RhdHVz');

@$core.Deprecated('Use getExpenseResponseDescriptor instead')
const GetExpenseResponse$json = {
  '1': 'GetExpenseResponse',
  '2': [
    {'1': 'expenses', '3': 1, '4': 1, '5': 11, '6': '.Expense', '10': 'expenses'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.SuccessStatus', '10': 'status'},
  ],
};

/// Descriptor for `GetExpenseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getExpenseResponseDescriptor = $convert.base64Decode(
    'ChJHZXRFeHBlbnNlUmVzcG9uc2USJAoIZXhwZW5zZXMYASABKAsyCC5FeHBlbnNlUghleHBlbn'
    'NlcxImCgZzdGF0dXMYAiABKAsyDi5TdWNjZXNzU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use listExpensesResponseDescriptor instead')
const ListExpensesResponse$json = {
  '1': 'ListExpensesResponse',
  '2': [
    {'1': 'expenses', '3': 1, '4': 3, '5': 11, '6': '.Expense', '10': 'expenses'},
  ],
};

/// Descriptor for `ListExpensesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExpensesResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0RXhwZW5zZXNSZXNwb25zZRIkCghleHBlbnNlcxgBIAMoCzIILkV4cGVuc2VSCGV4cG'
    'Vuc2Vz');

@$core.Deprecated('Use successStatusDescriptor instead')
const SuccessStatus$json = {
  '1': 'SuccessStatus',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `SuccessStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successStatusDescriptor = $convert.base64Decode(
    'Cg1TdWNjZXNzU3RhdHVzEhIKBGNvZGUYASABKAVSBGNvZGUSEAoDbXNnGAIgASgJUgNtc2c=');

