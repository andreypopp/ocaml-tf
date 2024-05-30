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

type github_organization_webhook

val github_organization_webhook :
  ?active:bool prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  events:string prop list ->
  unit ->
  github_organization_webhook

val yojson_of_github_organization_webhook :
  github_organization_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active : bool prop;
  etag : string prop;
  events : string list prop;
  id : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  events:string prop list ->
  string ->
  t

val make :
  ?active:bool prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  events:string prop list ->
  string ->
  t Tf_core.resource
