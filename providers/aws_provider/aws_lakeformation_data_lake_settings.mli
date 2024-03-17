(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_data_lake_settings__create_database_default_permissions

type aws_lakeformation_data_lake_settings__create_table_default_permissions

type aws_lakeformation_data_lake_settings

val aws_lakeformation_data_lake_settings :
  ?admins:string list ->
  ?allow_external_data_filtering:bool ->
  ?authorized_session_tag_value_list:string list ->
  ?catalog_id:string ->
  ?external_data_filtering_allow_list:string list ->
  ?id:string ->
  ?read_only_admins:string list ->
  ?trusted_resource_owners:string list ->
  create_database_default_permissions:
    aws_lakeformation_data_lake_settings__create_database_default_permissions
    list ->
  create_table_default_permissions:
    aws_lakeformation_data_lake_settings__create_table_default_permissions
    list ->
  string ->
  unit
