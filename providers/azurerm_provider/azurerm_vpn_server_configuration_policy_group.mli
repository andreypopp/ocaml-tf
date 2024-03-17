(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_server_configuration_policy_group__policy
type azurerm_vpn_server_configuration_policy_group__timeouts
type azurerm_vpn_server_configuration_policy_group

val azurerm_vpn_server_configuration_policy_group :
  ?is_default:bool ->
  ?priority:float ->
  ?timeouts:azurerm_vpn_server_configuration_policy_group__timeouts ->
  name:string ->
  vpn_server_configuration_id:string ->
  policy:azurerm_vpn_server_configuration_policy_group__policy list ->
  string ->
  unit
