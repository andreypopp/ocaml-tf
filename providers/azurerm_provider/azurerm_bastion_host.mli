(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bastion_host__ip_configuration
type azurerm_bastion_host__timeouts
type azurerm_bastion_host

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
  ?timeouts:azurerm_bastion_host__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:azurerm_bastion_host__ip_configuration list ->
  string ->
  t
