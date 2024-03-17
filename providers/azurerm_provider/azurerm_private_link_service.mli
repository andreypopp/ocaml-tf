(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_link_service__nat_ip_configuration
type azurerm_private_link_service__timeouts
type azurerm_private_link_service

type t = private {
  alias : string prop;
  auto_approval_subscription_ids : string list prop;
  enable_proxy_protocol : bool prop;
  fqdns : string list prop;
  id : string prop;
  load_balancer_frontend_ip_configuration_ids : string list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  visibility_subscription_ids : string list prop;
}

val azurerm_private_link_service :
  ?auto_approval_subscription_ids:string prop list ->
  ?enable_proxy_protocol:bool prop ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?visibility_subscription_ids:string prop list ->
  ?timeouts:azurerm_private_link_service__timeouts ->
  load_balancer_frontend_ip_configuration_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  nat_ip_configuration:
    azurerm_private_link_service__nat_ip_configuration list ->
  string ->
  t
