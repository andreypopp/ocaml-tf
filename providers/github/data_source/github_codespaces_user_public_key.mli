(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_codespaces_user_public_key

val github_codespaces_user_public_key :
  ?id:string prop -> unit -> github_codespaces_user_public_key

val yojson_of_github_codespaces_user_public_key :
  github_codespaces_user_public_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key : string prop;
  key_id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
