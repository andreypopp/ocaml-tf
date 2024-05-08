(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type circuit = {
  express_route_id : string prop;  (** express_route_id *)
  express_route_private_peering_id : string prop;
      (** express_route_private_peering_id *)
  primary_subnet_cidr : string prop;  (** primary_subnet_cidr *)
  secondary_subnet_cidr : string prop;  (** secondary_subnet_cidr *)
}

type management_cluster = {
  hosts : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** hosts *)
  id : float prop;  (** id *)
  size : float prop;  (** size *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_vmware_private_cloud

val azurerm_vmware_private_cloud :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_vmware_private_cloud

val yojson_of_azurerm_vmware_private_cloud :
  azurerm_vmware_private_cloud -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  circuit : circuit list prop;
  hcx_cloud_manager_endpoint : string prop;
  id : string prop;
  internet_connection_enabled : bool prop;
  location : string prop;
  management_cluster : management_cluster list prop;
  management_subnet_cidr : string prop;
  name : string prop;
  network_subnet_cidr : string prop;
  nsxt_certificate_thumbprint : string prop;
  nsxt_manager_endpoint : string prop;
  provisioning_subnet_cidr : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  vcenter_certificate_thumbprint : string prop;
  vcsa_endpoint : string prop;
  vmotion_subnet_cidr : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
