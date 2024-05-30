(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_ref

val github_ref :
  ?id:string prop ->
  ?owner:string prop ->
  ref:string prop ->
  repository:string prop ->
  unit ->
  github_ref

val yojson_of_github_ref : github_ref -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  owner : string prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owner:string prop ->
  ref:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owner:string prop ->
  ref:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
