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

type t = private {
  circuit : azurerm_vmware_private_cloud__circuit list prop;
  hcx_cloud_manager_endpoint : string prop;
  id : string prop;
  internet_connection_enabled : bool prop;
  location : string prop;
  management_subnet_cidr : string prop;
  name : string prop;
  network_subnet_cidr : string prop;
  nsxt_certificate_thumbprint : string prop;
  nsxt_manager_endpoint : string prop;
  nsxt_password : string prop;
  provisioning_subnet_cidr : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  vcenter_certificate_thumbprint : string prop;
  vcenter_password : string prop;
  vcsa_endpoint : string prop;
  vmotion_subnet_cidr : string prop;
}

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
  t
