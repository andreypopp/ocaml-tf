(** Get the base user Profile Mapping source or target from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_user_profile_mapping_source

val okta_user_profile_mapping_source :
  unit -> okta_user_profile_mapping_source

val yojson_of_okta_user_profile_mapping_source :
  okta_user_profile_mapping_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
