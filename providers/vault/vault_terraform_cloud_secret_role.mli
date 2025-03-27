(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_terraform_cloud_secret_role

val vault_terraform_cloud_secret_role :
  ?backend:string prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?organization:string prop ->
  ?team_id:string prop ->
  ?ttl:float prop ->
  ?user_id:string prop ->
  name:string prop ->
  unit ->
  vault_terraform_cloud_secret_role

val yojson_of_vault_terraform_cloud_secret_role : vault_terraform_cloud_secret_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  organization : string prop;
  team_id : string prop;
  ttl : float prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?organization:string prop ->
  ?team_id:string prop ->
  ?ttl:float prop ->
  ?user_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?organization:string prop ->
  ?team_id:string prop ->
  ?ttl:float prop ->
  ?user_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
