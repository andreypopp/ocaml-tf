(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type group_key

val group_key :
  ?namespace:string prop -> id:string prop -> unit -> group_key

type google_cloud_identity_group_lookup

val google_cloud_identity_group_lookup :
  ?id:string prop ->
  group_key:group_key list ->
  unit ->
  google_cloud_identity_group_lookup

val yojson_of_google_cloud_identity_group_lookup :
  google_cloud_identity_group_lookup -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_key:group_key list ->
  string ->
  t

val make :
  ?id:string prop ->
  group_key:group_key list ->
  string ->
  t Tf_core.resource
