(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_allow_list = {
  allow_list_value : string prop;  (** allow_list_value *)
  created_at : string prop;  (** created_at *)
  id : string prop;  (** id *)
  is_active : bool prop;  (** is_active *)
  name : string prop;  (** name *)
  updated_at : string prop;  (** updated_at *)
}

type github_organization_ip_allow_list

val github_organization_ip_allow_list :
  ?id:string prop -> unit -> github_organization_ip_allow_list

val yojson_of_github_organization_ip_allow_list :
  github_organization_ip_allow_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ip_allow_list : ip_allow_list list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
