(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_file

val github_repository_file :
  ?branch:string prop ->
  ?commit_author:string prop ->
  ?commit_email:string prop ->
  ?commit_message:string prop ->
  ?id:string prop ->
  ?overwrite_on_create:bool prop ->
  content:string prop ->
  file:string prop ->
  repository:string prop ->
  unit ->
  github_repository_file

val yojson_of_github_repository_file : github_repository_file -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branch : string prop;
  commit_author : string prop;
  commit_email : string prop;
  commit_message : string prop;
  commit_sha : string prop;
  content : string prop;
  file : string prop;
  id : string prop;
  overwrite_on_create : bool prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?branch:string prop ->
  ?commit_author:string prop ->
  ?commit_email:string prop ->
  ?commit_message:string prop ->
  ?id:string prop ->
  ?overwrite_on_create:bool prop ->
  content:string prop ->
  file:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?branch:string prop ->
  ?commit_author:string prop ->
  ?commit_email:string prop ->
  ?commit_message:string prop ->
  ?id:string prop ->
  ?overwrite_on_create:bool prop ->
  content:string prop ->
  file:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
