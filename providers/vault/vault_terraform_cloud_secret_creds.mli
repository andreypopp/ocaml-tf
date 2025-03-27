(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_terraform_cloud_secret_creds

val vault_terraform_cloud_secret_creds :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  role:string prop ->
  unit ->
  vault_terraform_cloud_secret_creds

val yojson_of_vault_terraform_cloud_secret_creds : vault_terraform_cloud_secret_creds -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  lease_id : string prop;
  namespace : string prop;
  organization : string prop;
  role : string prop;
  team_id : string prop;
  token : string prop;
  token_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?namespace:string prop -> backend:string prop -> role:string prop -> string -> t Tf_core.resource
