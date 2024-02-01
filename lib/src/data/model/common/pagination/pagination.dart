import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'pagination.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PagingModel<T> extends Equatable {
  final List<T> docs;
  final int totalDocs;
  final int limit;
  final int totalPages;
  final int page;
  final int pagingCounter;
  final bool hasPrevPage;
  final bool hasNextPage;
  final dynamic prevPage;
  final dynamic nextPage;

  const PagingModel(
    this.totalDocs,
    this.limit,
    this.totalPages,
    this.page,
    this.pagingCounter,
    this.hasPrevPage,
    this.hasNextPage,
    this.prevPage,
    this.nextPage, {
    this.docs = const [],
  });

  factory PagingModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PagingModelFromJson(json, fromJsonT);

  @override
  List<Object?> get props => [
        docs,
        totalDocs,
        limit,
        totalPages,
        page,
        pagingCounter,
        hasPrevPage,
        hasNextPage,
        prevPage,
        nextPage,
      ];
}
