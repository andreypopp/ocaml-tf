(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_vercel_destination

val vault_secrets_sync_vercel_destination :
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_name_template:string prop ->
  ?team_id:string prop ->
  access_token:string prop ->
  deployment_environments:string prop list ->
  name:string prop ->
  project_id:string prop ->
  unit ->
  vault_secrets_sync_vercel_destination

val yojson_of_vault_secrets_sync_vercel_destination : vault_secrets_sync_vercel_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token : string prop;
  deployment_environments : string list prop;
  granularity : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  project_id : string prop;
  secret_name_template : string prop;
  team_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_name_template:string prop ->
  ?team_id:string prop ->
  access_token:string prop ->
  deployment_environments:string prop list ->
  name:string prop ->
  project_id:string prop ->
  string ->
  t

val make :
  ?granularity:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_name_template:string prop ->
  ?team_id:string prop ->
  access_token:string prop ->
  deployment_environments:string prop list ->
  name:string prop ->
  project_id:string prop ->
  string ->
  t Tf_core.resource
