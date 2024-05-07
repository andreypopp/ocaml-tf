(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_netapp_volume_quota_rule

val azurerm_netapp_volume_quota_rule :
  ?id:string prop ->
  ?quota_target:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  quota_size_in_kib:float prop ->
  quota_type:string prop ->
  volume_id:string prop ->
  unit ->
  azurerm_netapp_volume_quota_rule

val yojson_of_azurerm_netapp_volume_quota_rule :
  azurerm_netapp_volume_quota_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  quota_size_in_kib : float prop;
  quota_target : string prop;
  quota_type : string prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?quota_target:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  quota_size_in_kib:float prop ->
  quota_type:string prop ->
  volume_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?quota_target:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  quota_size_in_kib:float prop ->
  quota_type:string prop ->
  volume_id:string prop ->
  string ->
  t Tf_core.resource
