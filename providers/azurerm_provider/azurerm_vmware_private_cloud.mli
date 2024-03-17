(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_private_cloud__management_cluster
type azurerm_vmware_private_cloud__timeouts

type azurerm_vmware_private_cloud__circuit = {
  express_route_id : string;  (** express_route_id *)
  express_route_private_peering_id : string;
      (** express_route_private_peering_id *)
  primary_subnet_cidr : string;  (** primary_subnet_cidr *)
  secondary_subnet_cidr : string;  (** secondary_subnet_cidr *)
}

type azurerm_vmware_private_cloud

val azurerm_vmware_private_cloud :
  ?id:string ->
  ?internet_connection_enabled:bool ->
  ?nsxt_password:string ->
  ?tags:(string * string) list ->
  ?vcenter_password:string ->
  ?timeouts:azurerm_vmware_private_cloud__timeouts ->
  location:string ->
  name:string ->
  network_subnet_cidr:string ->
  resource_group_name:string ->
  sku_name:string ->
  management_cluster:
    azurerm_vmware_private_cloud__management_cluster list ->
  string ->
  unit
