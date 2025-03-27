(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_gh_destination

val vault_secrets_sync_gh_destination :
  ?access_token:string prop ->
  ?app_name:string prop ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?installation_id:float prop ->
  ?namespace:string prop ->
  ?repository_name:string prop ->
  ?repository_owner:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  unit ->
  vault_secrets_sync_gh_destination

val yojson_of_vault_secrets_sync_gh_destination : vault_secrets_sync_gh_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token : string prop;
  app_name : string prop;
  granularity : string prop;
  id : string prop;
  installation_id : float prop;
  name : string prop;
  namespace : string prop;
  repository_name : string prop;
  repository_owner : string prop;
  secret_name_template : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_token:string prop ->
  ?app_name:string prop ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?installation_id:float prop ->
  ?namespace:string prop ->
  ?repository_name:string prop ->
  ?repository_owner:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?access_token:string prop ->
  ?app_name:string prop ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?installation_id:float prop ->
  ?namespace:string prop ->
  ?repository_name:string prop ->
  ?repository_owner:string prop ->
  ?secret_name_template:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
