(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_membership

val github_membership :
  ?downgrade_on_destroy:bool prop ->
  ?id:string prop ->
  ?role:string prop ->
  username:string prop ->
  unit ->
  github_membership

val yojson_of_github_membership : github_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  downgrade_on_destroy : bool prop;
  etag : string prop;
  id : string prop;
  role : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?downgrade_on_destroy:bool prop ->
  ?id:string prop ->
  ?role:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?downgrade_on_destroy:bool prop ->
  ?id:string prop ->
  ?role:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
