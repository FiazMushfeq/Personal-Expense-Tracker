//
//  Generated code. Do not modify.
//  source: expense.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ExpenseCategory extends $pb.ProtobufEnum {
  static const ExpenseCategory UNKNOWN = ExpenseCategory._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ExpenseCategory FOOD = ExpenseCategory._(1, _omitEnumNames ? '' : 'FOOD');
  static const ExpenseCategory TRANSPORT = ExpenseCategory._(2, _omitEnumNames ? '' : 'TRANSPORT');
  static const ExpenseCategory SHOPPING = ExpenseCategory._(3, _omitEnumNames ? '' : 'SHOPPING');
  static const ExpenseCategory ENTERTAINMENT = ExpenseCategory._(4, _omitEnumNames ? '' : 'ENTERTAINMENT');
  static const ExpenseCategory BILLS = ExpenseCategory._(5, _omitEnumNames ? '' : 'BILLS');
  static const ExpenseCategory EDUCATION = ExpenseCategory._(6, _omitEnumNames ? '' : 'EDUCATION');
  static const ExpenseCategory HEALTH = ExpenseCategory._(7, _omitEnumNames ? '' : 'HEALTH');
  static const ExpenseCategory OTHER = ExpenseCategory._(8, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<ExpenseCategory> values = <ExpenseCategory> [
    UNKNOWN,
    FOOD,
    TRANSPORT,
    SHOPPING,
    ENTERTAINMENT,
    BILLS,
    EDUCATION,
    HEALTH,
    OTHER,
  ];

  static final $core.Map<$core.int, ExpenseCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExpenseCategory? valueOf($core.int value) => _byValue[value];

  const ExpenseCategory._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
