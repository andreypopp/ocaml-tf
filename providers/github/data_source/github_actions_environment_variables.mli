(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type variables = {
  created_at : string prop;  (** created_at *)
  name : string prop;  (** name *)
  updated_at : string prop;  (** updated_at *)
  value : string prop;  (** value *)
}

type github_actions_environment_variables

val github_actions_environment_variables :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  environment:string prop ->
  unit ->
  github_actions_environment_variables

val yojson_of_github_actions_environment_variables :
  github_actions_environment_variables -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  environment : string prop;
  full_name : string prop;
  id : string prop;
  name : string prop;
  variables : variables list prop;
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
