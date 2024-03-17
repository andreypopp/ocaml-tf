(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_server_configuration_policy_group__policy
type azurerm_vpn_server_configuration_policy_group__timeouts
type azurerm_vpn_server_configuration_policy_group

val azurerm_vpn_server_configuration_policy_group :
  ?id:string prop ->
  ?is_default:bool prop ->
  ?priority:float prop ->
  ?timeouts:azurerm_vpn_server_configuration_policy_group__timeouts ->
  name:string prop ->
  vpn_server_configuration_id:string prop ->
  policy:azurerm_vpn_server_configuration_policy_group__policy list ->
  string ->
  unit
