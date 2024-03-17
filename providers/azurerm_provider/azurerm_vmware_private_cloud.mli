(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_private_cloud__management_cluster
type azurerm_vmware_private_cloud__timeouts

type azurerm_vmware_private_cloud__circuit = {
  express_route_id : string prop;  (** express_route_id *)
  express_route_private_peering_id : string prop;
      (** express_route_private_peering_id *)
  primary_subnet_cidr : string prop;  (** primary_subnet_cidr *)
  secondary_subnet_cidr : string prop;  (** secondary_subnet_cidr *)
}

type azurerm_vmware_private_cloud

val azurerm_vmware_private_cloud :
  ?id:string prop ->
  ?internet_connection_enabled:bool prop ->
  ?nsxt_password:string prop ->
  ?tags:(string * string prop) list ->
  ?vcenter_password:string prop ->
  ?timeouts:azurerm_vmware_private_cloud__timeouts ->
  location:string prop ->
  name:string prop ->
  network_subnet_cidr:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  management_cluster:
    azurerm_vmware_private_cloud__management_cluster list ->
  string ->
  unit
