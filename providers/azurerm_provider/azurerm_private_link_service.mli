(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_link_service__nat_ip_configuration
type azurerm_private_link_service__timeouts
type azurerm_private_link_service

val azurerm_private_link_service :
  ?auto_approval_subscription_ids:string list ->
  ?enable_proxy_protocol:bool ->
  ?fqdns:string list ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?visibility_subscription_ids:string list ->
  ?timeouts:azurerm_private_link_service__timeouts ->
  load_balancer_frontend_ip_configuration_ids:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  nat_ip_configuration:
    azurerm_private_link_service__nat_ip_configuration list ->
  string ->
  unit
