(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_membership

val github_membership :
  ?id:string prop ->
  ?organization:string prop ->
  username:string prop ->
  unit ->
  github_membership

val yojson_of_github_membership : github_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  organization : string prop;
  role : string prop;
  state : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?organization:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?organization:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
