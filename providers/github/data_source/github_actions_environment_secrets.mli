(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secrets = {
  created_at : string prop;  (** created_at *)
  name : string prop;  (** name *)
  updated_at : string prop;  (** updated_at *)
}

type github_actions_environment_secrets

val github_actions_environment_secrets :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  environment:string prop ->
  unit ->
  github_actions_environment_secrets

val yojson_of_github_actions_environment_secrets :
  github_actions_environment_secrets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  environment : string prop;
  full_name : string prop;
  id : string prop;
  name : string prop;
  secrets : secrets list prop;
}

val register :
  ?tf_module:tf_module ->
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  environment:string prop ->
  string ->
  t

val make :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  environment:string prop ->
  string ->
  t Tf_core.resource
