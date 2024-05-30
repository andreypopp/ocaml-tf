(** Get a single Brand from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_brand

val okta_brand : brand_id:string prop -> unit -> okta_brand
val yojson_of_okta_brand : okta_brand -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  custom_privacy_policy_url : string prop;
  id : string prop;
  links : string prop;
  name : string prop;
  remove_powered_by_okta : bool prop;
}

val register :
  ?tf_module:tf_module -> brand_id:string prop -> string -> t

val make : brand_id:string prop -> string -> t Tf_core.resource
