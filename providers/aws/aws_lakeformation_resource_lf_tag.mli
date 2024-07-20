(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type database

val database :
  ?catalog_id:string prop -> name:string prop -> unit -> database

type lf_tag

val lf_tag :
  ?catalog_id:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  lf_tag

type table

val table :
  ?catalog_id:string prop ->
  ?name:string prop ->
  ?wildcard:bool prop ->
  database_name:string prop ->
  unit ->
  table

type table_with_columns__column_wildcard

val table_with_columns__column_wildcard :
  ?excluded_column_names:string prop list ->
  unit ->
  table_with_columns__column_wildcard

type table_with_columns

val table_with_columns :
  ?catalog_id:string prop ->
  ?column_names:string prop list ->
  ?column_wildcard:table_with_columns__column_wildcard list ->
  database_name:string prop ->
  name:string prop ->
  unit ->
  table_with_columns

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_lakeformation_resource_lf_tag

val aws_lakeformation_resource_lf_tag :
  ?catalog_id:string prop ->
  ?database:database list ->
  ?lf_tag:lf_tag list ->
  ?table:table list ->
  ?table_with_columns:table_with_columns list ->
  ?timeouts:timeouts ->
  unit ->
  aws_lakeformation_resource_lf_tag

val yojson_of_aws_lakeformation_resource_lf_tag :
  aws_lakeformation_resource_lf_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  catalog_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?database:database list ->
  ?lf_tag:lf_tag list ->
  ?table:table list ->
  ?table_with_columns:table_with_columns list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?database:database list ->
  ?lf_tag:lf_tag list ->
  ?table:table list ->
  ?table_with_columns:table_with_columns list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
