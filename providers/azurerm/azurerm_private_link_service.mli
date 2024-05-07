(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nat_ip_configuration

val nat_ip_configuration :
  ?private_ip_address:string prop ->
  ?private_ip_address_version:string prop ->
  name:string prop ->
  primary:bool prop ->
  subnet_id:string prop ->
  unit ->
  nat_ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_link_service

val azurerm_private_link_service :
  ?auto_approval_subscription_ids:string prop list ->
  ?enable_proxy_protocol:bool prop ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?visibility_subscription_ids:string prop list ->
  ?timeouts:timeouts ->
  load_balancer_frontend_ip_configuration_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  nat_ip_configuration:nat_ip_configuration list ->
  unit ->
  azurerm_private_link_service

val yojson_of_azurerm_private_link_service :
  azurerm_private_link_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?auto_approval_subscription_ids:string prop list ->
  ?enable_proxy_protocol:bool prop ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?visibility_subscription_ids:string prop list ->
  ?timeouts:timeouts ->
  load_balancer_frontend_ip_configuration_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  nat_ip_configuration:nat_ip_configuration list ->
  string ->
  t

val make :
  ?auto_approval_subscription_ids:string prop list ->
  ?enable_proxy_protocol:bool prop ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?visibility_subscription_ids:string prop list ->
  ?timeouts:timeouts ->
  load_balancer_frontend_ip_configuration_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  nat_ip_configuration:nat_ip_configuration list ->
  string ->
  t Tf_core.resource
