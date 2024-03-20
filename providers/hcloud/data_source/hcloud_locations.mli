(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_locations

val hcloud_locations :
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?location_ids:string prop list ->
  ?names:string prop list ->
  unit ->
  hcloud_locations

val yojson_of_hcloud_locations : hcloud_locations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  descriptions : string list prop;
  id : string prop;
  location_ids : string list prop;
  locations : json prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?location_ids:string prop list ->
  ?names:string prop list ->
  string ->
  t

val make :
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?location_ids:string prop list ->
  ?names:string prop list ->
  string ->
  t Tf_core.resource
