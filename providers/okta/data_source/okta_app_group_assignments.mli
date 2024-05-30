(** Get a set of groups assigned to an Okta application. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_group_assignments

val okta_app_group_assignments :
  id:string prop -> unit -> okta_app_group_assignments

val yojson_of_okta_app_group_assignments :
  okta_app_group_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : string list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
