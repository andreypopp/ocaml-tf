(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type table_data__column_wildcard

val table_data__column_wildcard :
  ?excluded_column_names:string prop list ->
  unit ->
  table_data__column_wildcard

type table_data__row_filter__all_rows_wildcard

val table_data__row_filter__all_rows_wildcard :
  unit -> table_data__row_filter__all_rows_wildcard

type table_data__row_filter

val table_data__row_filter :
  ?filter_expression:string prop ->
  ?all_rows_wildcard:table_data__row_filter__all_rows_wildcard list ->
  unit ->
  table_data__row_filter

type table_data

val table_data :
  ?column_names:string prop list ->
  ?version_id:string prop ->
  ?column_wildcard:table_data__column_wildcard list ->
  ?row_filter:table_data__row_filter list ->
  database_name:string prop ->
  name:string prop ->
  table_catalog_id:string prop ->
  table_name:string prop ->
  unit ->
  table_data

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_lakeformation_data_cells_filter

val aws_lakeformation_data_cells_filter :
  ?table_data:table_data list ->
  ?timeouts:timeouts ->
  unit ->
  aws_lakeformation_data_cells_filter

val yojson_of_aws_lakeformation_data_cells_filter :
  aws_lakeformation_data_cells_filter -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?table_data:table_data list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?table_data:table_data list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
