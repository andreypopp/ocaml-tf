(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_groups = {
  group_id : float prop;  (** group_id *)
  group_name : string prop;  (** group_name *)
  updated_at : string prop;  (** updated_at *)
}

type github_external_groups

val github_external_groups :
  ?id:string prop -> unit -> github_external_groups

val yojson_of_github_external_groups : github_external_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  external_groups : external_groups list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
