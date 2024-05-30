(** Get the brands belonging to an Okta organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type brands = {
  custom_privacy_policy_url : string prop;
      (** custom_privacy_policy_url *)
  id : string prop;  (** id *)
  links : string prop;  (** links *)
  name : string prop;  (** name *)
  remove_powered_by_okta : bool prop;  (** remove_powered_by_okta *)
}

type okta_brands

val okta_brands : ?id:string prop -> unit -> okta_brands
val yojson_of_okta_brands : okta_brands -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brands : brands list prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
