(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_azure_destination

val vault_secrets_sync_azure_destination :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?cloud:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?key_vault_uri:string prop ->
  ?namespace:string prop ->
  ?secret_name_template:string prop ->
  ?tenant_id:string prop ->
  name:string prop ->
  unit ->
  vault_secrets_sync_azure_destination

val yojson_of_vault_secrets_sync_azure_destination : vault_secrets_sync_azure_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  cloud : string prop;
  custom_tags : string Tf_core.assoc prop;
  granularity : string prop;
  id : string prop;
  key_vault_uri : string prop;
  name : string prop;
  namespace : string prop;
  secret_name_template : string prop;
  tenant_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?cloud:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?key_vault_uri:string prop ->
  ?namespace:string prop ->
  ?secret_name_template:string prop ->
  ?tenant_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?client_id:string prop ->
  ?client_secret:string prop ->
  ?cloud:string prop ->
  ?custom_tags:string prop Tf_core.assoc ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?key_vault_uri:string prop ->
  ?namespace:string prop ->
  ?secret_name_template:string prop ->
  ?tenant_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
