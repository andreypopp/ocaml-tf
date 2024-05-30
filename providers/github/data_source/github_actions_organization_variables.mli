(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type variables = {
  created_at : string prop;  (** created_at *)
  name : string prop;  (** name *)
  updated_at : string prop;  (** updated_at *)
  value : string prop;  (** value *)
  visibility : string prop;  (** visibility *)
}

type github_actions_organization_variables

val github_actions_organization_variables :
  ?id:string prop -> unit -> github_actions_organization_variables

val yojson_of_github_actions_organization_variables :
  github_actions_organization_variables -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  variables : variables list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
