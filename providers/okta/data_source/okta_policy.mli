(** Get a policy from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy

val okta_policy :
  ?id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  okta_policy

val yojson_of_okta_policy : okta_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
