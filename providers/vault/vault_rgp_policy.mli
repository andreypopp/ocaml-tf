(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_rgp_policy

val vault_rgp_policy :
  ?id:string prop ->
  ?namespace:string prop ->
  enforcement_level:string prop ->
  name:string prop ->
  policy:string prop ->
  unit ->
  vault_rgp_policy

val yojson_of_vault_rgp_policy : vault_rgp_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enforcement_level : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  enforcement_level:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  enforcement_level:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
