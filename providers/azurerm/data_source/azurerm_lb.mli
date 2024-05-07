(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type frontend_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  private_ip_address_version : string prop;
      (** private_ip_address_version *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
  zones : string prop list;  (** zones *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_lb

val azurerm_lb :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_lb

val yojson_of_azurerm_lb : azurerm_lb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  frontend_ip_configuration : frontend_ip_configuration list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
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
