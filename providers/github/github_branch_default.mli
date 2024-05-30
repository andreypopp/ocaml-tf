(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_branch_default

val github_branch_default :
  ?id:string prop ->
  ?rename:bool prop ->
  branch:string prop ->
  repository:string prop ->
  unit ->
  github_branch_default

val yojson_of_github_branch_default : github_branch_default -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branch : string prop;
  etag : string prop;
  id : string prop;
  rename : bool prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rename:bool prop ->
  branch:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rename:bool prop ->
  branch:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
