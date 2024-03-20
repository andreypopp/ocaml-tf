(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nat_ip_configuration = {
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_address_version : string prop;
      (** private_ip_address_version *)
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_link_service

val azurerm_private_link_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_private_link_service

val yojson_of_azurerm_private_link_service :
  azurerm_private_link_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  auto_approval_subscription_ids : string list prop;
  enable_proxy_protocol : bool prop;
  id : string prop;
  load_balancer_frontend_ip_configuration_ids : string list prop;
  location : string prop;
  name : string prop;
  nat_ip_configuration : nat_ip_configuration list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  visibility_subscription_ids : string list prop;
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
