(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp_settings__instance_1_bgp_peering_address = {
  custom_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_ips *)
  default_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** default_ips *)
  ip_configuration_id : string prop;  (** ip_configuration_id *)
  tunnel_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tunnel_ips *)
}

type bgp_settings__instance_0_bgp_peering_address = {
  custom_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_ips *)
  default_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** default_ips *)
  ip_configuration_id : string prop;  (** ip_configuration_id *)
  tunnel_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tunnel_ips *)
}

type bgp_settings = {
  asn : float prop;  (** asn *)
  bgp_peering_address : string prop;  (** bgp_peering_address *)
  instance_0_bgp_peering_address :
    bgp_settings__instance_0_bgp_peering_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_0_bgp_peering_address *)
  instance_1_bgp_peering_address :
    bgp_settings__instance_1_bgp_peering_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_1_bgp_peering_address *)
  peer_weight : float prop;  (** peer_weight *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_vpn_gateway

val azurerm_vpn_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_vpn_gateway

val yojson_of_azurerm_vpn_gateway : azurerm_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bgp_settings : bgp_settings list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_unit : float prop;
  tags : string Tf_core.assoc prop;
  virtual_hub_id : string prop;
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
