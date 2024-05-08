(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ipsec_policy = {
  dh_group : string prop;  (** dh_group *)
  ike_encryption : string prop;  (** ike_encryption *)
  ike_integrity : string prop;  (** ike_integrity *)
  ipsec_encryption : string prop;  (** ipsec_encryption *)
  ipsec_integrity : string prop;  (** ipsec_integrity *)
  pfs_group : string prop;  (** pfs_group *)
  sa_datasize : float prop;  (** sa_datasize *)
  sa_lifetime : float prop;  (** sa_lifetime *)
}

type traffic_selector_policy = {
  local_address_cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_address_cidrs *)
  remote_address_cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** remote_address_cidrs *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_network_gateway_connection

val azurerm_virtual_network_gateway_connection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_network_gateway_connection

val yojson_of_azurerm_virtual_network_gateway_connection :
  azurerm_virtual_network_gateway_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_key : string prop;
  connection_protocol : string prop;
  dpd_timeout_seconds : float prop;
  egress_bytes_transferred : float prop;
  enable_bgp : bool prop;
  express_route_circuit_id : string prop;
  express_route_gateway_bypass : bool prop;
  id : string prop;
  ingress_bytes_transferred : float prop;
  ipsec_policy : ipsec_policy list prop;
  local_azure_ip_address_enabled : bool prop;
  local_network_gateway_id : string prop;
  location : string prop;
  name : string prop;
  peer_virtual_network_gateway_id : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  routing_weight : float prop;
  shared_key : string prop;
  tags : (string * string) list prop;
  traffic_selector_policy : traffic_selector_policy list prop;
  type_ : string prop;
  use_policy_based_traffic_selectors : bool prop;
  virtual_network_gateway_id : string prop;
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
