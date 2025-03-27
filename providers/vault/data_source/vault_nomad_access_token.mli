(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_nomad_access_token

val vault_nomad_access_token :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  role:string prop ->
  unit ->
  vault_nomad_access_token

val yojson_of_vault_nomad_access_token : vault_nomad_access_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor_id : string prop;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  role : string prop;
  secret_id : string prop;
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
