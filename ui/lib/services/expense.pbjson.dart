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
    {'1': 'FOOD', '2': 0},
    {'1': 'TRAVEL', '2': 1},
    {'1': 'SHOPPING', '2': 2},
  ],
};

/// Descriptor for `ExpenseCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List expenseCategoryDescriptor = $convert.base64Decode(
    'Cg9FeHBlbnNlQ2F0ZWdvcnkSCAoERk9PRBAAEgoKBlRSQVZFTBABEgwKCFNIT1BQSU5HEAI=');

@$core.Deprecated('Use expenseDescriptor instead')
const Expense$json = {
  '1': 'Expense',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.ExpenseCategory', '10': 'category'},
    {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `Expense`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expenseDescriptor = $convert.base64Decode(
    'CgdFeHBlbnNlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIWCgZhbW91bnQYAiABKAFSBmFtb3VudB'
    'IsCghjYXRlZ29yeRgDIAEoDjIQLkV4cGVuc2VDYXRlZ29yeVIIY2F0ZWdvcnkSEgoEZGF0ZRgE'
    'IAEoCVIEZGF0ZQ==');

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

@$core.Deprecated('Use createExpensesRequestDescriptor instead')
const CreateExpensesRequest$json = {
  '1': 'CreateExpensesRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.ExpenseCategory', '10': 'category'},
    {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `CreateExpensesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createExpensesRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVFeHBlbnNlc1JlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEhYKBmFtb3VudB'
    'gCIAEoAVIGYW1vdW50EiwKCGNhdGVnb3J5GAMgASgOMhAuRXhwZW5zZUNhdGVnb3J5UghjYXRl'
    'Z29yeRISCgRkYXRlGAQgASgJUgRkYXRl');

@$core.Deprecated('Use deleteExpensesRequestDescriptor instead')
const DeleteExpensesRequest$json = {
  '1': 'DeleteExpensesRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteExpensesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteExpensesRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVFeHBlbnNlc1JlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use updateExpensesRequestDescriptor instead')
const UpdateExpensesRequest$json = {
  '1': 'UpdateExpensesRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'category', '3': 4, '4': 1, '5': 14, '6': '.ExpenseCategory', '10': 'category'},
    {'1': 'date', '3': 5, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `UpdateExpensesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateExpensesRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVFeHBlbnNlc1JlcXVlc3QSDgoCaWQYASABKAVSAmlkEhQKBXRpdGxlGAIgASgJUg'
    'V0aXRsZRIWCgZhbW91bnQYAyABKAFSBmFtb3VudBIsCghjYXRlZ29yeRgEIAEoDjIQLkV4cGVu'
    'c2VDYXRlZ29yeVIIY2F0ZWdvcnkSEgoEZGF0ZRgFIAEoCVIEZGF0ZQ==');

@$core.Deprecated('Use getSummaryRequestDescriptor instead')
const GetSummaryRequest$json = {
  '1': 'GetSummaryRequest',
  '2': [
    {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.ExpenseCategory', '10': 'category'},
  ],
};

/// Descriptor for `GetSummaryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummaryRequestDescriptor = $convert.base64Decode(
    'ChFHZXRTdW1tYXJ5UmVxdWVzdBIsCghjYXRlZ29yeRgBIAEoDjIQLkV4cGVuc2VDYXRlZ29yeV'
    'IIY2F0ZWdvcnk=');

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

@$core.Deprecated('Use createExpensesResponseDescriptor instead')
const CreateExpensesResponse$json = {
  '1': 'CreateExpensesResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `CreateExpensesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createExpensesResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVFeHBlbnNlc1Jlc3BvbnNlEg4KAmlkGAEgASgFUgJpZBIUCgVlcnJvchgCIAEoCV'
    'IFZXJyb3I=');

@$core.Deprecated('Use deleteExpensesResponseDescriptor instead')
const DeleteExpensesResponse$json = {
  '1': 'DeleteExpensesResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteExpensesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteExpensesResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVFeHBlbnNlc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use updateExpensesResponseDescriptor instead')
const UpdateExpensesResponse$json = {
  '1': 'UpdateExpensesResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdateExpensesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateExpensesResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVFeHBlbnNlc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use getSummaryResponseDescriptor instead')
const GetSummaryResponse$json = {
  '1': 'GetSummaryResponse',
  '2': [
    {'1': 'expenses', '3': 1, '4': 3, '5': 11, '6': '.Expense', '10': 'expenses'},
  ],
};

/// Descriptor for `GetSummaryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummaryResponseDescriptor = $convert.base64Decode(
    'ChJHZXRTdW1tYXJ5UmVzcG9uc2USJAoIZXhwZW5zZXMYASADKAsyCC5FeHBlbnNlUghleHBlbn'
    'Nlcw==');

