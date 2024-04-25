(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attributes = {
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}

type provider_details = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}

type configuration__crawler_configuration

val configuration__crawler_configuration :
  role_arn:string prop ->
  unit ->
  configuration__crawler_configuration

type configuration__provider_identity

val configuration__provider_identity :
  external_id:string prop ->
  principal:string prop ->
  unit ->
  configuration__provider_identity

type configuration

val configuration :
  ?crawler_configuration:configuration__crawler_configuration list ->
  ?provider_identity:configuration__provider_identity list ->
  unit ->
  configuration

type aws_securitylake_custom_log_source

val aws_securitylake_custom_log_source :
  ?event_classes:string prop list ->
  ?source_version:string prop ->
  ?configuration:configuration list ->
  source_name:string prop ->
  unit ->
  aws_securitylake_custom_log_source

val yojson_of_aws_securitylake_custom_log_source :
  aws_securitylake_custom_log_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  attributes : attributes list prop;
  event_classes : string list prop;
  id : string prop;
  provider_details : provider_details list prop;
  source_name : string prop;
  source_version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?event_classes:string prop list ->
  ?source_version:string prop ->
  ?configuration:configuration list ->
  source_name:string prop ->
  string ->
  t

val make :
  ?event_classes:string prop list ->
  ?source_version:string prop ->
  ?configuration:configuration list ->
  source_name:string prop ->
  string ->
  t Tf_core.resource
