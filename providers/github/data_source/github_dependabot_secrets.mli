(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secrets = {
  created_at : string prop;  (** created_at *)
  name : string prop;  (** name *)
  updated_at : string prop;  (** updated_at *)
}

type github_dependabot_secrets

val github_dependabot_secrets :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  github_dependabot_secrets

val yojson_of_github_dependabot_secrets :
  github_dependabot_secrets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  string ->
  t

val make :
  ?full_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
