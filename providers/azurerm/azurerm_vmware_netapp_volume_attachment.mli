(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_netapp_volume_attachment__timeouts
type azurerm_vmware_netapp_volume_attachment

type t = private {
  id : string prop;
  name : string prop;
  netapp_volume_id : string prop;
  vmware_cluster_id : string prop;
}

val azurerm_vmware_netapp_volume_attachment :
  ?id:string prop ->
  ?timeouts:azurerm_vmware_netapp_volume_attachment__timeouts ->
  name:string prop ->
  netapp_volume_id:string prop ->
  vmware_cluster_id:string prop ->
  string ->
  t
