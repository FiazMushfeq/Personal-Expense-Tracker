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

import 'expense.pbenum.dart';

export 'expense.pbenum.dart';

class Expense extends $pb.GeneratedMessage {
  factory Expense({
    $core.String? title,
    $core.double? amount,
    ExpenseCategory? category,
    $core.String? date,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (category != null) {
      $result.category = category;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  Expense._() : super();
  factory Expense.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expense.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expense', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..e<ExpenseCategory>(3, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpenseCategory.FOOD, valueOf: ExpenseCategory.valueOf, enumValues: ExpenseCategory.values)
    ..aOS(4, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expense clone() => Expense()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expense copyWith(void Function(Expense) updates) => super.copyWith((message) => updates(message as Expense)) as Expense;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expense create() => Expense._();
  Expense createEmptyInstance() => create();
  static $pb.PbList<Expense> createRepeated() => $pb.PbList<Expense>();
  @$core.pragma('dart2js:noInline')
  static Expense getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expense>(create);
  static Expense? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  ExpenseCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(ExpenseCategory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);
}

class ListExpensesRequest extends $pb.GeneratedMessage {
  factory ListExpensesRequest({
    $core.String? date,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  ListExpensesRequest._() : super();
  factory ListExpensesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExpensesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExpensesRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExpensesRequest clone() => ListExpensesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExpensesRequest copyWith(void Function(ListExpensesRequest) updates) => super.copyWith((message) => updates(message as ListExpensesRequest)) as ListExpensesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExpensesRequest create() => ListExpensesRequest._();
  ListExpensesRequest createEmptyInstance() => create();
  static $pb.PbList<ListExpensesRequest> createRepeated() => $pb.PbList<ListExpensesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListExpensesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpensesRequest>(create);
  static ListExpensesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);
}

class CreateExpensesRequest extends $pb.GeneratedMessage {
  factory CreateExpensesRequest({
    $core.String? title,
    $core.double? amount,
    ExpenseCategory? category,
    $core.String? date,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (category != null) {
      $result.category = category;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  CreateExpensesRequest._() : super();
  factory CreateExpensesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateExpensesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateExpensesRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..e<ExpenseCategory>(3, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpenseCategory.FOOD, valueOf: ExpenseCategory.valueOf, enumValues: ExpenseCategory.values)
    ..aOS(4, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateExpensesRequest clone() => CreateExpensesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateExpensesRequest copyWith(void Function(CreateExpensesRequest) updates) => super.copyWith((message) => updates(message as CreateExpensesRequest)) as CreateExpensesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExpensesRequest create() => CreateExpensesRequest._();
  CreateExpensesRequest createEmptyInstance() => create();
  static $pb.PbList<CreateExpensesRequest> createRepeated() => $pb.PbList<CreateExpensesRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateExpensesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateExpensesRequest>(create);
  static CreateExpensesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  ExpenseCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(ExpenseCategory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);
}

class DeleteExpensesRequest extends $pb.GeneratedMessage {
  factory DeleteExpensesRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteExpensesRequest._() : super();
  factory DeleteExpensesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteExpensesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteExpensesRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteExpensesRequest clone() => DeleteExpensesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteExpensesRequest copyWith(void Function(DeleteExpensesRequest) updates) => super.copyWith((message) => updates(message as DeleteExpensesRequest)) as DeleteExpensesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteExpensesRequest create() => DeleteExpensesRequest._();
  DeleteExpensesRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteExpensesRequest> createRepeated() => $pb.PbList<DeleteExpensesRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteExpensesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteExpensesRequest>(create);
  static DeleteExpensesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateExpensesRequest extends $pb.GeneratedMessage {
  factory UpdateExpensesRequest({
    $core.int? id,
    $core.String? title,
    $core.double? amount,
    ExpenseCategory? category,
    $core.String? date,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (category != null) {
      $result.category = category;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  UpdateExpensesRequest._() : super();
  factory UpdateExpensesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateExpensesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateExpensesRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..e<ExpenseCategory>(4, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpenseCategory.FOOD, valueOf: ExpenseCategory.valueOf, enumValues: ExpenseCategory.values)
    ..aOS(5, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateExpensesRequest clone() => UpdateExpensesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateExpensesRequest copyWith(void Function(UpdateExpensesRequest) updates) => super.copyWith((message) => updates(message as UpdateExpensesRequest)) as UpdateExpensesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateExpensesRequest create() => UpdateExpensesRequest._();
  UpdateExpensesRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateExpensesRequest> createRepeated() => $pb.PbList<UpdateExpensesRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateExpensesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateExpensesRequest>(create);
  static UpdateExpensesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  ExpenseCategory get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(ExpenseCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);
}

class GetSummaryRequest extends $pb.GeneratedMessage {
  factory GetSummaryRequest({
    ExpenseCategory? category,
  }) {
    final $result = create();
    if (category != null) {
      $result.category = category;
    }
    return $result;
  }
  GetSummaryRequest._() : super();
  factory GetSummaryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSummaryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSummaryRequest', createEmptyInstance: create)
    ..e<ExpenseCategory>(1, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpenseCategory.FOOD, valueOf: ExpenseCategory.valueOf, enumValues: ExpenseCategory.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSummaryRequest clone() => GetSummaryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSummaryRequest copyWith(void Function(GetSummaryRequest) updates) => super.copyWith((message) => updates(message as GetSummaryRequest)) as GetSummaryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSummaryRequest create() => GetSummaryRequest._();
  GetSummaryRequest createEmptyInstance() => create();
  static $pb.PbList<GetSummaryRequest> createRepeated() => $pb.PbList<GetSummaryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSummaryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSummaryRequest>(create);
  static GetSummaryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ExpenseCategory get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ExpenseCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);
}

class ListExpensesResponse extends $pb.GeneratedMessage {
  factory ListExpensesResponse({
    $core.Iterable<Expense>? expenses,
  }) {
    final $result = create();
    if (expenses != null) {
      $result.expenses.addAll(expenses);
    }
    return $result;
  }
  ListExpensesResponse._() : super();
  factory ListExpensesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExpensesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExpensesResponse', createEmptyInstance: create)
    ..pc<Expense>(1, _omitFieldNames ? '' : 'expenses', $pb.PbFieldType.PM, subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExpensesResponse clone() => ListExpensesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExpensesResponse copyWith(void Function(ListExpensesResponse) updates) => super.copyWith((message) => updates(message as ListExpensesResponse)) as ListExpensesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExpensesResponse create() => ListExpensesResponse._();
  ListExpensesResponse createEmptyInstance() => create();
  static $pb.PbList<ListExpensesResponse> createRepeated() => $pb.PbList<ListExpensesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListExpensesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpensesResponse>(create);
  static ListExpensesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Expense> get expenses => $_getList(0);
}

class CreateExpensesResponse extends $pb.GeneratedMessage {
  factory CreateExpensesResponse({
    $core.int? id,
    $core.String? error,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  CreateExpensesResponse._() : super();
  factory CreateExpensesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateExpensesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateExpensesResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateExpensesResponse clone() => CreateExpensesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateExpensesResponse copyWith(void Function(CreateExpensesResponse) updates) => super.copyWith((message) => updates(message as CreateExpensesResponse)) as CreateExpensesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExpensesResponse create() => CreateExpensesResponse._();
  CreateExpensesResponse createEmptyInstance() => create();
  static $pb.PbList<CreateExpensesResponse> createRepeated() => $pb.PbList<CreateExpensesResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateExpensesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateExpensesResponse>(create);
  static CreateExpensesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class DeleteExpensesResponse extends $pb.GeneratedMessage {
  factory DeleteExpensesResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteExpensesResponse._() : super();
  factory DeleteExpensesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteExpensesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteExpensesResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteExpensesResponse clone() => DeleteExpensesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteExpensesResponse copyWith(void Function(DeleteExpensesResponse) updates) => super.copyWith((message) => updates(message as DeleteExpensesResponse)) as DeleteExpensesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteExpensesResponse create() => DeleteExpensesResponse._();
  DeleteExpensesResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteExpensesResponse> createRepeated() => $pb.PbList<DeleteExpensesResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteExpensesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteExpensesResponse>(create);
  static DeleteExpensesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UpdateExpensesResponse extends $pb.GeneratedMessage {
  factory UpdateExpensesResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  UpdateExpensesResponse._() : super();
  factory UpdateExpensesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateExpensesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateExpensesResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateExpensesResponse clone() => UpdateExpensesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateExpensesResponse copyWith(void Function(UpdateExpensesResponse) updates) => super.copyWith((message) => updates(message as UpdateExpensesResponse)) as UpdateExpensesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateExpensesResponse create() => UpdateExpensesResponse._();
  UpdateExpensesResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateExpensesResponse> createRepeated() => $pb.PbList<UpdateExpensesResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateExpensesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateExpensesResponse>(create);
  static UpdateExpensesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class GetSummaryResponse extends $pb.GeneratedMessage {
  factory GetSummaryResponse({
    $core.Iterable<Expense>? expenses,
  }) {
    final $result = create();
    if (expenses != null) {
      $result.expenses.addAll(expenses);
    }
    return $result;
  }
  GetSummaryResponse._() : super();
  factory GetSummaryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSummaryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSummaryResponse', createEmptyInstance: create)
    ..pc<Expense>(1, _omitFieldNames ? '' : 'expenses', $pb.PbFieldType.PM, subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSummaryResponse clone() => GetSummaryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSummaryResponse copyWith(void Function(GetSummaryResponse) updates) => super.copyWith((message) => updates(message as GetSummaryResponse)) as GetSummaryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSummaryResponse create() => GetSummaryResponse._();
  GetSummaryResponse createEmptyInstance() => create();
  static $pb.PbList<GetSummaryResponse> createRepeated() => $pb.PbList<GetSummaryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSummaryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSummaryResponse>(create);
  static GetSummaryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Expense> get expenses => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
