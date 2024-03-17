(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lakeformation_data_lake_settings__create_database_default_permissions

type aws_lakeformation_data_lake_settings__create_table_default_permissions

type aws_lakeformation_data_lake_settings

val aws_lakeformation_data_lake_settings :
  ?allow_external_data_filtering:bool ->
  ?catalog_id:string ->
  create_database_default_permissions:
    aws_lakeformation_data_lake_settings__create_database_default_permissions
    list ->
  create_table_default_permissions:
    aws_lakeformation_data_lake_settings__create_table_default_permissions
    list ->
  string ->
  unit
