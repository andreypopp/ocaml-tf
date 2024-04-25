(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_active_directory_authentication

val azure_active_directory_authentication :
  audience:string prop ->
  issuer:string prop ->
  tenant:string prop ->
  unit ->
  azure_active_directory_authentication

type client_revoked_certificate

val client_revoked_certificate :
  name:string prop ->
  thumbprint:string prop ->
  unit ->
  client_revoked_certificate

type client_root_certificate

val client_root_certificate :
  name:string prop ->
  public_cert_data:string prop ->
  unit ->
  client_root_certificate

type ipsec_policy

val ipsec_policy :
  dh_group:string prop ->
  ike_encryption:string prop ->
  ike_integrity:string prop ->
  ipsec_encryption:string prop ->
  ipsec_integrity:string prop ->
  pfs_group:string prop ->
  sa_data_size_kilobytes:float prop ->
  sa_lifetime_seconds:float prop ->
  unit ->
  ipsec_policy

type radius__client_root_certificate

val radius__client_root_certificate :
  name:string prop ->
  thumbprint:string prop ->
  unit ->
  radius__client_root_certificate

type radius__server

val radius__server :
  address:string prop ->
  score:float prop ->
  secret:string prop ->
  unit ->
  radius__server

type radius__server_root_certificate

val radius__server_root_certificate :
  name:string prop ->
  public_cert_data:string prop ->
  unit ->
  radius__server_root_certificate

type radius

val radius :
  ?server:radius__server list ->
  client_root_certificate:radius__client_root_certificate list ->
  server_root_certificate:radius__server_root_certificate list ->
  unit ->
  radius

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_vpn_server_configuration

val azurerm_vpn_server_configuration :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpn_protocols:string prop list ->
  ?azure_active_directory_authentication:
    azure_active_directory_authentication list ->
  ?ipsec_policy:ipsec_policy list ->
  ?radius:radius list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_authentication_types:string prop list ->
  client_revoked_certificate:client_revoked_certificate list ->
  client_root_certificate:client_root_certificate list ->
  unit ->
  azurerm_vpn_server_configuration

val yojson_of_azurerm_vpn_server_configuration :
  azurerm_vpn_server_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vpn_authentication_types : string list prop;
  vpn_protocols : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpn_protocols:string prop list ->
  ?azure_active_directory_authentication:
    azure_active_directory_authentication list ->
  ?ipsec_policy:ipsec_policy list ->
  ?radius:radius list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_authentication_types:string prop list ->
  client_revoked_certificate:client_revoked_certificate list ->
  client_root_certificate:client_root_certificate list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpn_protocols:string prop list ->
  ?azure_active_directory_authentication:
    azure_active_directory_authentication list ->
  ?ipsec_policy:ipsec_policy list ->
  ?radius:radius list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_authentication_types:string prop list ->
  client_revoked_certificate:client_revoked_certificate list ->
  client_root_certificate:client_root_certificate list ->
  string ->
  t Tf_core.resource
