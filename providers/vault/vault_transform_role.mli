(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transform_role

val vault_transform_role :
  ?id:string prop ->
  ?namespace:string prop ->
  ?transformations:string prop list ->
  name:string prop ->
  path:string prop ->
  unit ->
  vault_transform_role

val yojson_of_vault_transform_role : vault_transform_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  transformations : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?transformations:string prop list ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?transformations:string prop list ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
