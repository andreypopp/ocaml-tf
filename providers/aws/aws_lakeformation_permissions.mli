(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type data_cells_filter

val data_cells_filter :
  database_name:string prop ->
  name:string prop ->
  table_catalog_id:string prop ->
  table_name:string prop ->
  unit ->
  data_cells_filter

type data_location

val data_location :
  ?catalog_id:string prop -> arn:string prop -> unit -> data_location

type database

val database :
  ?catalog_id:string prop -> name:string prop -> unit -> database

type lf_tag

val lf_tag :
  ?catalog_id:string prop ->
  key:string prop ->
  values:string prop list ->
  unit ->
  lf_tag

type lf_tag_policy__expression

val lf_tag_policy__expression :
  key:string prop ->
  values:string prop list ->
  unit ->
  lf_tag_policy__expression

type lf_tag_policy

val lf_tag_policy :
  ?catalog_id:string prop ->
  resource_type:string prop ->
  expression:lf_tag_policy__expression list ->
  unit ->
  lf_tag_policy

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

type aws_lakeformation_permissions

val aws_lakeformation_permissions :
  ?catalog_id:string prop ->
  ?catalog_resource:bool prop ->
  ?id:string prop ->
  ?permissions_with_grant_option:string prop list ->
  permissions:string prop list ->
  principal:string prop ->
  data_cells_filter:data_cells_filter list ->
  data_location:data_location list ->
  database:database list ->
  lf_tag:lf_tag list ->
  lf_tag_policy:lf_tag_policy list ->
  table:table list ->
  table_with_columns:table_with_columns list ->
  unit ->
  aws_lakeformation_permissions

val yojson_of_aws_lakeformation_permissions :
  aws_lakeformation_permissions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  catalog_id : string prop;
  catalog_resource : bool prop;
  id : string prop;
  permissions : string list prop;
  permissions_with_grant_option : string list prop;
  principal : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?catalog_resource:bool prop ->
  ?id:string prop ->
  ?permissions_with_grant_option:string prop list ->
  permissions:string prop list ->
  principal:string prop ->
  data_cells_filter:data_cells_filter list ->
  data_location:data_location list ->
  database:database list ->
  lf_tag:lf_tag list ->
  lf_tag_policy:lf_tag_policy list ->
  table:table list ->
  table_with_columns:table_with_columns list ->
  string ->
  t
