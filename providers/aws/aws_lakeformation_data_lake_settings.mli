(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type create_database_default_permissions

val create_database_default_permissions :
  ?permissions:string prop list ->
  ?principal:string prop ->
  unit ->
  create_database_default_permissions

type create_table_default_permissions

val create_table_default_permissions :
  ?permissions:string prop list ->
  ?principal:string prop ->
  unit ->
  create_table_default_permissions

type aws_lakeformation_data_lake_settings

val aws_lakeformation_data_lake_settings :
  ?admins:string prop list ->
  ?allow_external_data_filtering:bool prop ->
  ?authorized_session_tag_value_list:string prop list ->
  ?catalog_id:string prop ->
  ?external_data_filtering_allow_list:string prop list ->
  ?id:string prop ->
  ?read_only_admins:string prop list ->
  ?trusted_resource_owners:string prop list ->
  ?create_database_default_permissions:
    create_database_default_permissions list ->
  ?create_table_default_permissions:
    create_table_default_permissions list ->
  unit ->
  aws_lakeformation_data_lake_settings

val yojson_of_aws_lakeformation_data_lake_settings :
  aws_lakeformation_data_lake_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admins : string list prop;
  allow_external_data_filtering : bool prop;
  authorized_session_tag_value_list : string list prop;
  catalog_id : string prop;
  external_data_filtering_allow_list : string list prop;
  id : string prop;
  read_only_admins : string list prop;
  trusted_resource_owners : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?admins:string prop list ->
  ?allow_external_data_filtering:bool prop ->
  ?authorized_session_tag_value_list:string prop list ->
  ?catalog_id:string prop ->
  ?external_data_filtering_allow_list:string prop list ->
  ?id:string prop ->
  ?read_only_admins:string prop list ->
  ?trusted_resource_owners:string prop list ->
  ?create_database_default_permissions:
    create_database_default_permissions list ->
  ?create_table_default_permissions:
    create_table_default_permissions list ->
  string ->
  t

val make :
  ?admins:string prop list ->
  ?allow_external_data_filtering:bool prop ->
  ?authorized_session_tag_value_list:string prop list ->
  ?catalog_id:string prop ->
  ?external_data_filtering_allow_list:string prop list ->
  ?id:string prop ->
  ?read_only_admins:string prop list ->
  ?trusted_resource_owners:string prop list ->
  ?create_database_default_permissions:
    create_database_default_permissions list ->
  ?create_table_default_permissions:
    create_table_default_permissions list ->
  string ->
  t Tf_core.resource
