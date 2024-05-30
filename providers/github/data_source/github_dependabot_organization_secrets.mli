(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secrets = {
  created_at : string prop;  (** created_at *)
  name : string prop;  (** name *)
  updated_at : string prop;  (** updated_at *)
  visibility : string prop;  (** visibility *)
}

type github_dependabot_organization_secrets

val github_dependabot_organization_secrets :
  ?id:string prop -> unit -> github_dependabot_organization_secrets

val yojson_of_github_dependabot_organization_secrets :
  github_dependabot_organization_secrets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  secrets : secrets list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
