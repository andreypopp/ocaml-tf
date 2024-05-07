(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_vmware_netapp_volume_attachment

val azurerm_vmware_netapp_volume_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  netapp_volume_id:string prop ->
  vmware_cluster_id:string prop ->
  unit ->
  azurerm_vmware_netapp_volume_attachment

val yojson_of_azurerm_vmware_netapp_volume_attachment :
  azurerm_vmware_netapp_volume_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  netapp_volume_id : string prop;
  vmware_cluster_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  netapp_volume_id:string prop ->
  vmware_cluster_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  netapp_volume_id:string prop ->
  vmware_cluster_id:string prop ->
  string ->
  t Tf_core.resource
