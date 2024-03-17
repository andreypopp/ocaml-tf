(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_data_lake_settings__create_database_default_permissions

type aws_lakeformation_data_lake_settings__create_table_default_permissions

type aws_lakeformation_data_lake_settings

type t = private {
  admins : string list prop;
  allow_external_data_filtering : bool prop;
  authorized_session_tag_value_list : string list prop;
  catalog_id : string prop;
  external_data_filtering_allow_list : string list prop;
  id : string prop;
  read_only_admins : string list prop;
  trusted_resource_owners : string list prop;
}

val aws_lakeformation_data_lake_settings :
  ?admins:string prop list ->
  ?allow_external_data_filtering:bool prop ->
  ?authorized_session_tag_value_list:string prop list ->
  ?catalog_id:string prop ->
  ?external_data_filtering_allow_list:string prop list ->
  ?id:string prop ->
  ?read_only_admins:string prop list ->
  ?trusted_resource_owners:string prop list ->
  create_database_default_permissions:
    aws_lakeformation_data_lake_settings__create_database_default_permissions
    list ->
  create_table_default_permissions:
    aws_lakeformation_data_lake_settings__create_table_default_permissions
    list ->
  string ->
  t
