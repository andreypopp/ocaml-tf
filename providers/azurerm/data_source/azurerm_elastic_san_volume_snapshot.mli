(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_elastic_san_volume_snapshot

val azurerm_elastic_san_volume_snapshot :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  volume_group_id:string prop ->
  unit ->
  azurerm_elastic_san_volume_snapshot

val yojson_of_azurerm_elastic_san_volume_snapshot :
  azurerm_elastic_san_volume_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  source_id : string prop;
  source_volume_size_in_gib : float prop;
  volume_group_id : string prop;
  volume_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  volume_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  volume_group_id:string prop ->
  string ->
  t Tf_core.resource
