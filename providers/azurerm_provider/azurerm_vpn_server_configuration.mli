(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_server_configuration__azure_active_directory_authentication

type azurerm_vpn_server_configuration__client_revoked_certificate
type azurerm_vpn_server_configuration__client_root_certificate
type azurerm_vpn_server_configuration__ipsec_policy
type azurerm_vpn_server_configuration__radius__client_root_certificate
type azurerm_vpn_server_configuration__radius__server
type azurerm_vpn_server_configuration__radius__server_root_certificate
type azurerm_vpn_server_configuration__radius
type azurerm_vpn_server_configuration__timeouts
type azurerm_vpn_server_configuration

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vpn_authentication_types : string list prop;
  vpn_protocols : string list prop;
}

val azurerm_vpn_server_configuration :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?vpn_protocols:string prop list ->
  ?timeouts:azurerm_vpn_server_configuration__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  vpn_authentication_types:string prop list ->
  azure_active_directory_authentication:
    azurerm_vpn_server_configuration__azure_active_directory_authentication
    list ->
  client_revoked_certificate:
    azurerm_vpn_server_configuration__client_revoked_certificate list ->
  client_root_certificate:
    azurerm_vpn_server_configuration__client_root_certificate list ->
  ipsec_policy:azurerm_vpn_server_configuration__ipsec_policy list ->
  radius:azurerm_vpn_server_configuration__radius list ->
  string ->
  t
