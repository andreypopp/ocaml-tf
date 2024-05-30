(** Get a Default policy from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_default_policy

val okta_default_policy :
  ?id:string prop -> type_:string prop -> unit -> okta_default_policy

val yojson_of_okta_default_policy : okta_default_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
