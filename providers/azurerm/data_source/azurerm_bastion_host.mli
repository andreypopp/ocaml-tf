(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configuration = {
  name : string prop;  (** name *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_bastion_host

val azurerm_bastion_host :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_bastion_host

val yojson_of_azurerm_bastion_host : azurerm_bastion_host -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  copy_paste_enabled : bool prop;
  dns_name : string prop;
  file_copy_enabled : bool prop;
  id : string prop;
  ip_configuration : ip_configuration list prop;
  ip_connect_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  shareable_link_enabled : bool prop;
  sku : string prop;
  tags : (string * string) list prop;
  tunneling_enabled : bool prop;
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
