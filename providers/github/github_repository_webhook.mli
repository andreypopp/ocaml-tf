(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration

val configuration :
  ?content_type:string prop ->
  ?insecure_ssl:bool prop ->
  ?secret:string prop ->
  url:string prop ->
  unit ->
  configuration

type github_repository_webhook

val github_repository_webhook :
  ?active:bool prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  events:string prop list ->
  repository:string prop ->
  unit ->
  github_repository_webhook

val yojson_of_github_repository_webhook :
  github_repository_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active : bool prop;
  etag : string prop;
  events : string list prop;
  id : string prop;
  repository : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  events:string prop list ->
  repository:string prop ->
  string ->
  t

val make :
  ?active:bool prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  events:string prop list ->
  repository:string prop ->
  string ->
  t Tf_core.resource
