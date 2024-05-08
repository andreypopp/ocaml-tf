(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type create_database_default_permissions = {
  permissions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** permissions *)
  principal : string prop;  (** principal *)
}

type create_table_default_permissions = {
  permissions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** permissions *)
  principal : string prop;  (** principal *)
}

type aws_lakeformation_data_lake_settings

val aws_lakeformation_data_lake_settings :
  ?catalog_id:string prop ->
  ?id:string prop ->
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
  create_database_default_permissions :
    create_database_default_permissions list prop;
  create_table_default_permissions :
    create_table_default_permissions list prop;
  external_data_filtering_allow_list : string list prop;
  id : string prop;
  read_only_admins : string list prop;
  trusted_resource_owners : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
