(** Get a set of users assigned to an Okta application. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_user_assignments

val okta_app_user_assignments :
  id:string prop -> unit -> okta_app_user_assignments

val yojson_of_okta_app_user_assignments :
  okta_app_user_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  users : string list prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
