// This is a generated file - do not edit.
//
// Generated from schema/expense.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'expense.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'expense.pbenum.dart';

class Expense extends $pb.GeneratedMessage {
  factory Expense({
    $core.int? id,
    $core.String? title,
    $core.double? amount,
    ExpenseCategory? category,
    $core.String? date,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (amount != null) result.amount = amount;
    if (category != null) result.category = category;
    if (date != null) result.date = date;
    return result;
  }

  Expense._();

  factory Expense.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Expense.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expense', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..e<ExpenseCategory>(4, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpenseCategory.UNKNOWN, valueOf: ExpenseCategory.valueOf, enumValues: ExpenseCategory.values)
    ..aOS(5, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Expense clone() => Expense()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Expense copyWith(void Function(Expense) updates) => super.copyWith((message) => updates(message as Expense)) as Expense;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expense create() => Expense._();
  @$core.override
  Expense createEmptyInstance() => create();
  static $pb.PbList<Expense> createRepeated() => $pb.PbList<Expense>();
  @$core.pragma('dart2js:noInline')
  static Expense getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expense>(create);
  static Expense? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);

  @$pb.TagNumber(4)
  ExpenseCategory get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(ExpenseCategory value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => $_clearField(5);
}

class CreateExpenseRequest extends $pb.GeneratedMessage {
  factory CreateExpenseRequest({
    Expense? expense,
  }) {
    final result = create();
    if (expense != null) result.expense = expense;
    return result;
  }

  CreateExpenseRequest._();

  factory CreateExpenseRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateExpenseRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateExpenseRequest', createEmptyInstance: create)
    ..aOM<Expense>(1, _omitFieldNames ? '' : 'expense', subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateExpenseRequest clone() => CreateExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateExpenseRequest copyWith(void Function(CreateExpenseRequest) updates) => super.copyWith((message) => updates(message as CreateExpenseRequest)) as CreateExpenseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExpenseRequest create() => CreateExpenseRequest._();
  @$core.override
  CreateExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<CreateExpenseRequest> createRepeated() => $pb.PbList<CreateExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateExpenseRequest>(create);
  static CreateExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Expense get expense => $_getN(0);
  @$pb.TagNumber(1)
  set expense(Expense value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasExpense() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpense() => $_clearField(1);
  @$pb.TagNumber(1)
  Expense ensureExpense() => $_ensure(0);
}

class DeleteExpenseRequest extends $pb.GeneratedMessage {
  factory DeleteExpenseRequest({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteExpenseRequest._();

  factory DeleteExpenseRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteExpenseRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteExpenseRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteExpenseRequest clone() => DeleteExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteExpenseRequest copyWith(void Function(DeleteExpenseRequest) updates) => super.copyWith((message) => updates(message as DeleteExpenseRequest)) as DeleteExpenseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteExpenseRequest create() => DeleteExpenseRequest._();
  @$core.override
  DeleteExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteExpenseRequest> createRepeated() => $pb.PbList<DeleteExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteExpenseRequest>(create);
  static DeleteExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class UpdateExpenseRequest extends $pb.GeneratedMessage {
  factory UpdateExpenseRequest({
    Expense? expense,
  }) {
    final result = create();
    if (expense != null) result.expense = expense;
    return result;
  }

  UpdateExpenseRequest._();

  factory UpdateExpenseRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateExpenseRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateExpenseRequest', createEmptyInstance: create)
    ..aOM<Expense>(1, _omitFieldNames ? '' : 'expense', subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateExpenseRequest clone() => UpdateExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateExpenseRequest copyWith(void Function(UpdateExpenseRequest) updates) => super.copyWith((message) => updates(message as UpdateExpenseRequest)) as UpdateExpenseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateExpenseRequest create() => UpdateExpenseRequest._();
  @$core.override
  UpdateExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateExpenseRequest> createRepeated() => $pb.PbList<UpdateExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateExpenseRequest>(create);
  static UpdateExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Expense get expense => $_getN(0);
  @$pb.TagNumber(1)
  set expense(Expense value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasExpense() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpense() => $_clearField(1);
  @$pb.TagNumber(1)
  Expense ensureExpense() => $_ensure(0);
}

class GetExpenseRequest extends $pb.GeneratedMessage {
  factory GetExpenseRequest({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetExpenseRequest._();

  factory GetExpenseRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetExpenseRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetExpenseRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetExpenseRequest clone() => GetExpenseRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetExpenseRequest copyWith(void Function(GetExpenseRequest) updates) => super.copyWith((message) => updates(message as GetExpenseRequest)) as GetExpenseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetExpenseRequest create() => GetExpenseRequest._();
  @$core.override
  GetExpenseRequest createEmptyInstance() => create();
  static $pb.PbList<GetExpenseRequest> createRepeated() => $pb.PbList<GetExpenseRequest>();
  @$core.pragma('dart2js:noInline')
  static GetExpenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetExpenseRequest>(create);
  static GetExpenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class ListExpensesRequest extends $pb.GeneratedMessage {
  factory ListExpensesRequest({
    $core.String? date,
  }) {
    final result = create();
    if (date != null) result.date = date;
    return result;
  }

  ListExpensesRequest._();

  factory ListExpensesRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListExpensesRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExpensesRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListExpensesRequest clone() => ListExpensesRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListExpensesRequest copyWith(void Function(ListExpensesRequest) updates) => super.copyWith((message) => updates(message as ListExpensesRequest)) as ListExpensesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExpensesRequest create() => ListExpensesRequest._();
  @$core.override
  ListExpensesRequest createEmptyInstance() => create();
  static $pb.PbList<ListExpensesRequest> createRepeated() => $pb.PbList<ListExpensesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListExpensesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpensesRequest>(create);
  static ListExpensesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);
}

class CreateExpenseResponse extends $pb.GeneratedMessage {
  factory CreateExpenseResponse({
    $core.int? id,
    SuccessStatus? status,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (status != null) result.status = status;
    return result;
  }

  CreateExpenseResponse._();

  factory CreateExpenseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateExpenseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateExpenseResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<SuccessStatus>(2, _omitFieldNames ? '' : 'status', subBuilder: SuccessStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateExpenseResponse clone() => CreateExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateExpenseResponse copyWith(void Function(CreateExpenseResponse) updates) => super.copyWith((message) => updates(message as CreateExpenseResponse)) as CreateExpenseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateExpenseResponse create() => CreateExpenseResponse._();
  @$core.override
  CreateExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<CreateExpenseResponse> createRepeated() => $pb.PbList<CreateExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateExpenseResponse>(create);
  static CreateExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  SuccessStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(SuccessStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
  @$pb.TagNumber(2)
  SuccessStatus ensureStatus() => $_ensure(1);
}

class DeleteExpenseResponse extends $pb.GeneratedMessage {
  factory DeleteExpenseResponse({
    SuccessStatus? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  DeleteExpenseResponse._();

  factory DeleteExpenseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteExpenseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteExpenseResponse', createEmptyInstance: create)
    ..aOM<SuccessStatus>(1, _omitFieldNames ? '' : 'status', subBuilder: SuccessStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteExpenseResponse clone() => DeleteExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteExpenseResponse copyWith(void Function(DeleteExpenseResponse) updates) => super.copyWith((message) => updates(message as DeleteExpenseResponse)) as DeleteExpenseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteExpenseResponse create() => DeleteExpenseResponse._();
  @$core.override
  DeleteExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteExpenseResponse> createRepeated() => $pb.PbList<DeleteExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteExpenseResponse>(create);
  static DeleteExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuccessStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SuccessStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
  @$pb.TagNumber(1)
  SuccessStatus ensureStatus() => $_ensure(0);
}

class UpdateExpenseResponse extends $pb.GeneratedMessage {
  factory UpdateExpenseResponse({
    SuccessStatus? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  UpdateExpenseResponse._();

  factory UpdateExpenseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateExpenseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateExpenseResponse', createEmptyInstance: create)
    ..aOM<SuccessStatus>(1, _omitFieldNames ? '' : 'status', subBuilder: SuccessStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateExpenseResponse clone() => UpdateExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateExpenseResponse copyWith(void Function(UpdateExpenseResponse) updates) => super.copyWith((message) => updates(message as UpdateExpenseResponse)) as UpdateExpenseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateExpenseResponse create() => UpdateExpenseResponse._();
  @$core.override
  UpdateExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateExpenseResponse> createRepeated() => $pb.PbList<UpdateExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateExpenseResponse>(create);
  static UpdateExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuccessStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SuccessStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
  @$pb.TagNumber(1)
  SuccessStatus ensureStatus() => $_ensure(0);
}

class GetExpenseResponse extends $pb.GeneratedMessage {
  factory GetExpenseResponse({
    Expense? expense,
    SuccessStatus? status,
  }) {
    final result = create();
    if (expense != null) result.expense = expense;
    if (status != null) result.status = status;
    return result;
  }

  GetExpenseResponse._();

  factory GetExpenseResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetExpenseResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetExpenseResponse', createEmptyInstance: create)
    ..aOM<Expense>(1, _omitFieldNames ? '' : 'expense', subBuilder: Expense.create)
    ..aOM<SuccessStatus>(2, _omitFieldNames ? '' : 'status', subBuilder: SuccessStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetExpenseResponse clone() => GetExpenseResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetExpenseResponse copyWith(void Function(GetExpenseResponse) updates) => super.copyWith((message) => updates(message as GetExpenseResponse)) as GetExpenseResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetExpenseResponse create() => GetExpenseResponse._();
  @$core.override
  GetExpenseResponse createEmptyInstance() => create();
  static $pb.PbList<GetExpenseResponse> createRepeated() => $pb.PbList<GetExpenseResponse>();
  @$core.pragma('dart2js:noInline')
  static GetExpenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetExpenseResponse>(create);
  static GetExpenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Expense get expense => $_getN(0);
  @$pb.TagNumber(1)
  set expense(Expense value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasExpense() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpense() => $_clearField(1);
  @$pb.TagNumber(1)
  Expense ensureExpense() => $_ensure(0);

  @$pb.TagNumber(2)
  SuccessStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(SuccessStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
  @$pb.TagNumber(2)
  SuccessStatus ensureStatus() => $_ensure(1);
}

class ListExpensesResponse extends $pb.GeneratedMessage {
  factory ListExpensesResponse({
    $core.Iterable<Expense>? expenses,
  }) {
    final result = create();
    if (expenses != null) result.expenses.addAll(expenses);
    return result;
  }

  ListExpensesResponse._();

  factory ListExpensesResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListExpensesResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListExpensesResponse', createEmptyInstance: create)
    ..pc<Expense>(1, _omitFieldNames ? '' : 'expenses', $pb.PbFieldType.PM, subBuilder: Expense.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListExpensesResponse clone() => ListExpensesResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListExpensesResponse copyWith(void Function(ListExpensesResponse) updates) => super.copyWith((message) => updates(message as ListExpensesResponse)) as ListExpensesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListExpensesResponse create() => ListExpensesResponse._();
  @$core.override
  ListExpensesResponse createEmptyInstance() => create();
  static $pb.PbList<ListExpensesResponse> createRepeated() => $pb.PbList<ListExpensesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListExpensesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpensesResponse>(create);
  static ListExpensesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Expense> get expenses => $_getList(0);
}

class SuccessStatus extends $pb.GeneratedMessage {
  factory SuccessStatus({
    $core.int? code,
    $core.String? msg,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (msg != null) result.msg = msg;
    return result;
  }

  SuccessStatus._();

  factory SuccessStatus.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SuccessStatus.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuccessStatus', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SuccessStatus clone() => SuccessStatus()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SuccessStatus copyWith(void Function(SuccessStatus) updates) => super.copyWith((message) => updates(message as SuccessStatus)) as SuccessStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuccessStatus create() => SuccessStatus._();
  @$core.override
  SuccessStatus createEmptyInstance() => create();
  static $pb.PbList<SuccessStatus> createRepeated() => $pb.PbList<SuccessStatus>();
  @$core.pragma('dart2js:noInline')
  static SuccessStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuccessStatus>(create);
  static SuccessStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => $_clearField(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
