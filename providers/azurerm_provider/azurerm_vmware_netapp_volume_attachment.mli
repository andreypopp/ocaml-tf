(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_netapp_volume_attachment__timeouts
type azurerm_vmware_netapp_volume_attachment

val azurerm_vmware_netapp_volume_attachment :
  ?timeouts:azurerm_vmware_netapp_volume_attachment__timeouts ->
  name:string ->
  netapp_volume_id:string ->
  vmware_cluster_id:string ->
  string ->
  unit
