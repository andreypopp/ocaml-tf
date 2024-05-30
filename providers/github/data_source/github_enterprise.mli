(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_enterprise

val github_enterprise :
  ?id:string prop -> slug:string prop -> unit -> github_enterprise

val yojson_of_github_enterprise : github_enterprise -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  database_id : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  slug : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  slug:string prop ->
  string ->
  t

val make :
  ?id:string prop -> slug:string prop -> string -> t Tf_core.resource
