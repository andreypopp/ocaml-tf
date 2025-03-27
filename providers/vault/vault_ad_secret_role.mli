(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ad_secret_role

val vault_ad_secret_role :
  ?id:string prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  backend:string prop ->
  role:string prop ->
  service_account_name:string prop ->
  unit ->
  vault_ad_secret_role

val yojson_of_vault_ad_secret_role : vault_ad_secret_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  last_vault_rotation : string prop;
  namespace : string prop;
  password_last_set : string prop;
  role : string prop;
  service_account_name : string prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  backend:string prop ->
  role:string prop ->
  service_account_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  backend:string prop ->
  role:string prop ->
  service_account_name:string prop ->
  string ->
  t Tf_core.resource
