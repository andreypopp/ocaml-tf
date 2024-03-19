(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type table_with_columns

val table_with_columns :
  ?catalog_id:string prop ->
  ?column_names:string prop list ->
  ?excluded_column_names:string prop list ->
  ?wildcard:bool prop ->
  database_name:string prop ->
  name:string prop ->
  unit ->
  table_with_columns

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_lakeformation_resource_lf_tags

val aws_lakeformation_resource_lf_tags :
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database:database list ->
  lf_tag:lf_tag list ->
  table:table list ->
  table_with_columns:table_with_columns list ->
  unit ->
  aws_lakeformation_resource_lf_tags

val yojson_of_aws_lakeformation_resource_lf_tags :
  aws_lakeformation_resource_lf_tags -> json

(** RESOURCE REGISTRATION *)

type t = private { catalog_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database:database list ->
  lf_tag:lf_tag list ->
  table:table list ->
  table_with_columns:table_with_columns list ->
  string ->
  t
