(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_nomad_secret_role

val vault_nomad_secret_role :
  ?global:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  ?type_:string prop ->
  backend:string prop ->
  role:string prop ->
  unit ->
  vault_nomad_secret_role

val yojson_of_vault_nomad_secret_role : vault_nomad_secret_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  global : bool prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  role : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?global:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  ?type_:string prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?global:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  ?type_:string prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
