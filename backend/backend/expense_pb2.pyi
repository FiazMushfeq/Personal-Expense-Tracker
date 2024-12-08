from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ExpenseCategory(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    FOOD: _ClassVar[ExpenseCategory]
    TRAVEL: _ClassVar[ExpenseCategory]
    SHOPPING: _ClassVar[ExpenseCategory]
FOOD: ExpenseCategory
TRAVEL: ExpenseCategory
SHOPPING: ExpenseCategory

class Expense(_message.Message):
    __slots__ = ("title", "amount", "category", "date")
    TITLE_FIELD_NUMBER: _ClassVar[int]
    AMOUNT_FIELD_NUMBER: _ClassVar[int]
    CATEGORY_FIELD_NUMBER: _ClassVar[int]
    DATE_FIELD_NUMBER: _ClassVar[int]
    title: str
    amount: float
    category: ExpenseCategory
    date: str
    def __init__(self, title: _Optional[str] = ..., amount: _Optional[float] = ..., category: _Optional[_Union[ExpenseCategory, str]] = ..., date: _Optional[str] = ...) -> None: ...

class ListExpensesRequest(_message.Message):
    __slots__ = ("date",)
    DATE_FIELD_NUMBER: _ClassVar[int]
    date: str
    def __init__(self, date: _Optional[str] = ...) -> None: ...

class CreateExpensesRequest(_message.Message):
    __slots__ = ("title", "amount", "category", "date")
    TITLE_FIELD_NUMBER: _ClassVar[int]
    AMOUNT_FIELD_NUMBER: _ClassVar[int]
    CATEGORY_FIELD_NUMBER: _ClassVar[int]
    DATE_FIELD_NUMBER: _ClassVar[int]
    title: str
    amount: float
    category: ExpenseCategory
    date: str
    def __init__(self, title: _Optional[str] = ..., amount: _Optional[float] = ..., category: _Optional[_Union[ExpenseCategory, str]] = ..., date: _Optional[str] = ...) -> None: ...

class DeleteExpensesRequest(_message.Message):
    __slots__ = ("id",)
    ID_FIELD_NUMBER: _ClassVar[int]
    id: int
    def __init__(self, id: _Optional[int] = ...) -> None: ...

class UpdateExpensesRequest(_message.Message):
    __slots__ = ("id", "title", "amount", "category", "date")
    ID_FIELD_NUMBER: _ClassVar[int]
    TITLE_FIELD_NUMBER: _ClassVar[int]
    AMOUNT_FIELD_NUMBER: _ClassVar[int]
    CATEGORY_FIELD_NUMBER: _ClassVar[int]
    DATE_FIELD_NUMBER: _ClassVar[int]
    id: int
    title: str
    amount: float
    category: ExpenseCategory
    date: str
    def __init__(self, id: _Optional[int] = ..., title: _Optional[str] = ..., amount: _Optional[float] = ..., category: _Optional[_Union[ExpenseCategory, str]] = ..., date: _Optional[str] = ...) -> None: ...

class GetSummaryRequest(_message.Message):
    __slots__ = ("category",)
    CATEGORY_FIELD_NUMBER: _ClassVar[int]
    category: ExpenseCategory
    def __init__(self, category: _Optional[_Union[ExpenseCategory, str]] = ...) -> None: ...

class ListExpensesResponse(_message.Message):
    __slots__ = ("expenses",)
    EXPENSES_FIELD_NUMBER: _ClassVar[int]
    expenses: _containers.RepeatedCompositeFieldContainer[Expense]
    def __init__(self, expenses: _Optional[_Iterable[_Union[Expense, _Mapping]]] = ...) -> None: ...

class CreateExpensesResponse(_message.Message):
    __slots__ = ("id", "error")
    ID_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    id: int
    error: str
    def __init__(self, id: _Optional[int] = ..., error: _Optional[str] = ...) -> None: ...

class DeleteExpensesResponse(_message.Message):
    __slots__ = ("success",)
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    success: bool
    def __init__(self, success: bool = ...) -> None: ...

class UpdateExpensesResponse(_message.Message):
    __slots__ = ("success",)
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    success: bool
    def __init__(self, success: bool = ...) -> None: ...

class GetSummaryResponse(_message.Message):
    __slots__ = ("expenses",)
    EXPENSES_FIELD_NUMBER: _ClassVar[int]
    expenses: _containers.RepeatedCompositeFieldContainer[Expense]
    def __init__(self, expenses: _Optional[_Iterable[_Union[Expense, _Mapping]]] = ...) -> None: ...
