(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identities = {
  login : string prop;  (** login *)
  saml_identity : (string * string prop) list;  (** saml_identity *)
  scim_identity : (string * string prop) list;  (** scim_identity *)
}

type github_organization_external_identities

val github_organization_external_identities :
  ?id:string prop -> unit -> github_organization_external_identities

val yojson_of_github_organization_external_identities :
  github_organization_external_identities -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identities : identities list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
