(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_rest_api

val github_rest_api :
  ?id:string prop -> endpoint:string prop -> unit -> github_rest_api

val yojson_of_github_rest_api : github_rest_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  code : float prop;
  endpoint : string prop;
  headers : string prop;
  id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  endpoint:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  endpoint:string prop ->
  string ->
  t Tf_core.resource
