(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_gcp_destination

val vault_secrets_sync_gcp_destination :
  ?credentials:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?project_id:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  unit ->
  vault_secrets_sync_gcp_destination

val yojson_of_vault_secrets_sync_gcp_destination : vault_secrets_sync_gcp_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  credentials : string prop;
  custom_tags : string Tf_core.assoc prop;
  granularity : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  project_id : string prop;
  secret_name_template : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?credentials:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?project_id:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?credentials:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?project_id:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
