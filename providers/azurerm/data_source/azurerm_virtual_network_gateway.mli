(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp_settings = {
  asn : float prop;  (** asn *)
  peer_weight : float prop;  (** peer_weight *)
  peering_address : string prop;  (** peering_address *)
}

type custom_route = {
  address_prefixes : string prop list;  (** address_prefixes *)
}

type ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type vpn_client_configuration__root_certificate = {
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}

type vpn_client_configuration__revoked_certificate = {
  name : string prop;  (** name *)
  thumbprint : string prop;  (** thumbprint *)
}

type vpn_client_configuration = {
  aad_audience : string prop;  (** aad_audience *)
  aad_issuer : string prop;  (** aad_issuer *)
  aad_tenant : string prop;  (** aad_tenant *)
  address_space : string prop list;  (** address_space *)
  radius_server_address : string prop;  (** radius_server_address *)
  radius_server_secret : string prop;  (** radius_server_secret *)
  revoked_certificate :
    vpn_client_configuration__revoked_certificate list;
      (** revoked_certificate *)
  root_certificate : vpn_client_configuration__root_certificate list;
      (** root_certificate *)
  vpn_client_protocols : string prop list;
      (** vpn_client_protocols *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_network_gateway

val azurerm_virtual_network_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_network_gateway

val yojson_of_azurerm_virtual_network_gateway :
  azurerm_virtual_network_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_active : bool prop;
  bgp_settings : bgp_settings list prop;
  custom_route : custom_route list prop;
  default_local_network_gateway_id : string prop;
  enable_bgp : bool prop;
  generation : string prop;
  id : string prop;
  ip_configuration : ip_configuration list prop;
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  vpn_client_configuration : vpn_client_configuration list prop;
  vpn_type : string prop;
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
