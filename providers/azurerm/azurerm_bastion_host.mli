(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configuration

val ip_configuration :
  name:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  unit ->
  ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bastion_host

val azurerm_bastion_host :
  ?copy_paste_enabled:bool prop ->
  ?file_copy_enabled:bool prop ->
  ?id:string prop ->
  ?ip_connect_enabled:bool prop ->
  ?scale_units:float prop ->
  ?shareable_link_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?tunneling_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:ip_configuration list ->
  unit ->
  azurerm_bastion_host

val yojson_of_azurerm_bastion_host : azurerm_bastion_host -> json

(** RESOURCE REGISTRATION *)

type t = private {
  copy_paste_enabled : bool prop;
  dns_name : string prop;
  file_copy_enabled : bool prop;
  id : string prop;
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
  ?copy_paste_enabled:bool prop ->
  ?file_copy_enabled:bool prop ->
  ?id:string prop ->
  ?ip_connect_enabled:bool prop ->
  ?scale_units:float prop ->
  ?shareable_link_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?tunneling_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:ip_configuration list ->
  string ->
  t

val make :
  ?copy_paste_enabled:bool prop ->
  ?file_copy_enabled:bool prop ->
  ?id:string prop ->
  ?ip_connect_enabled:bool prop ->
  ?scale_units:float prop ->
  ?shareable_link_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?tunneling_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:ip_configuration list ->
  string ->
  t Tf_core.resource
