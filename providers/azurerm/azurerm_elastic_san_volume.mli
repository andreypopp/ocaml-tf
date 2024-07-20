(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type create_source

val create_source :
  source_id:string prop ->
  source_type:string prop ->
  unit ->
  create_source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_elastic_san_volume

val azurerm_elastic_san_volume :
  ?id:string prop ->
  ?create_source:create_source list ->
  ?timeouts:timeouts ->
  name:string prop ->
  size_in_gib:float prop ->
  volume_group_id:string prop ->
  unit ->
  azurerm_elastic_san_volume

val yojson_of_azurerm_elastic_san_volume :
  azurerm_elastic_san_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  size_in_gib : float prop;
  target_iqn : string prop;
  target_portal_hostname : string prop;
  target_portal_port : float prop;
  volume_group_id : string prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?create_source:create_source list ->
  ?timeouts:timeouts ->
  name:string prop ->
  size_in_gib:float prop ->
  volume_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?create_source:create_source list ->
  ?timeouts:timeouts ->
  name:string prop ->
  size_in_gib:float prop ->
  volume_group_id:string prop ->
  string ->
  t Tf_core.resource
