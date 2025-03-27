(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ad_access_credentials

val vault_ad_access_credentials :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  role:string prop ->
  unit ->
  vault_ad_access_credentials

val yojson_of_vault_ad_access_credentials : vault_ad_access_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  current_password : string prop;
  id : string prop;
  last_password : string prop;
  namespace : string prop;
  role : string prop;
  username : string prop;
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
