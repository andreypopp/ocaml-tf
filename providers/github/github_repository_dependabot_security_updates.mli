(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_dependabot_security_updates

val github_repository_dependabot_security_updates :
  ?id:string prop ->
  enabled:bool prop ->
  repository:string prop ->
  unit ->
  github_repository_dependabot_security_updates

val yojson_of_github_repository_dependabot_security_updates :
  github_repository_dependabot_security_updates -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  enabled:bool prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  enabled:bool prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
