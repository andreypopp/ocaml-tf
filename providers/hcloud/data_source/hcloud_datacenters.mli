(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_datacenters

val hcloud_datacenters :
  ?datacenter_ids:string prop list ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?names:string prop list ->
  unit ->
  hcloud_datacenters

val yojson_of_hcloud_datacenters : hcloud_datacenters -> json

(** RESOURCE REGISTRATION *)

type t = private {
  datacenter_ids : string list prop;
  datacenters : json prop;
  descriptions : string list prop;
  id : string prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?datacenter_ids:string prop list ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?names:string prop list ->
  string ->
  t

val make :
  ?datacenter_ids:string prop list ->
  ?descriptions:string prop list ->
  ?id:string prop ->
  ?names:string prop list ->
  string ->
  t Tf_core.resource
