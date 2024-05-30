(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_app

val github_app :
  ?id:string prop -> slug:string prop -> unit -> github_app

val yojson_of_github_app : github_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  slug : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  slug:string prop ->
  string ->
  t

val make :
  ?id:string prop -> slug:string prop -> string -> t Tf_core.resource
